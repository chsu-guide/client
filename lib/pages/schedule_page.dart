import 'dart:convert';
import 'dart:io';

import 'package:chsu_schedule_app/network/chsu_service.dart';
import 'package:chsu_schedule_app/network/api_utils.dart';
import 'package:chsu_schedule_app/network/api/generated/chsu_openapi.swagger.dart';

import '../classes/schedule_target.dart';
import '../widgets/schedule_card.dart';
import '../widgets/schedule_date_picker.dart';
import '../widgets/schedule_form_drawer.dart';
import '../widgets/schedule_query_view.dart';
import '../widgets/schedule_search_field.dart';
import '../widgets/schedule_target_selector.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:table_calendar/table_calendar.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  final ScrollController _scrollController = ScrollController();

  ScheduleTarget _selectedTarget = ScheduleTarget.student;

  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOn;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  final DateFormat _dateFormat = DateFormat("EEEE, dd.MM.yyyy", "ru");

  CalendarFormat _calendarFormat = CalendarFormat.month;

  // Добавляем переменные для отслеживания валидности
  bool _isSearchFieldValid = false;
  bool _isDateSelected = false; 

  // Добавляем переменную для хранения значения поиска
  String _searchValue = '';

  List<String> _groups = [];
  List<String> _tutors = [];
  List<String> _auditoriums = [];

  List<ScheduleCard> _scheduleItems = [];

  @override
  void initState() {
    super.initState();
    _loadAuditoriums();
    _loadGroups();
    _loadTutors();
  }

  // Метод для обновления состояния валидности поля поиска
  void _updateSearchFieldValidation(bool isValid) {
    setState(() {
      _isSearchFieldValid = isValid;
    });
  }

  // Метод для обновления значения поиска
  void _updateSearchValue(String value) {
    setState(() {
      _searchValue = value;
    });
  }

  void _checkDateSelected() {
    setState(() {
      // Проверяем, выбрана ли одиночная дата ИЛИ выбран диапазон дат
      _isDateSelected = (_selectedDay != null) || (_rangeStart != null && _rangeEnd != null);
    });
  }

  Future<void> _loadGroups() async {
      List<String> groups = await getGroups();
      setState(() {
        _groups = groups;
      });
    }

  Future<List<String>> getGroups() async{
    try {
      var token_attempt = await ChsuService.authenticate();
      var token = unwrapResponse<DataModelString>(token_attempt);

      var client = HttpClient();
      var req = await client.get("api.chsu.ru", 80, "/api/group/v1");
      req.headers.add("Authorization", "Bearer ${token.data}");
      var unwrapped = await req.close();
      var stringData = await unwrapped.transform(utf8.decoder).join();

      //debugPrint(stringData);

      // Парсим JSON
      List<dynamic> data = jsonDecode(stringData);
      // Преобразуем каждый элемент в строку (title)
      List<String> groups = data.map<String>((item) => item['title'] as String).toList();
      return groups;
    } catch (e) {
      // В случае ошибки возвращаем пустой список или обрабатываем ошибку как-то иначе
      debugPrint('Error: $e');
      return [];
    }
  }

  Future<void> _loadAuditoriums() async {
  List<String> auditoriums = await getAuditoriums();
  setState(() {
    _auditoriums = auditoriums;
  });
}

Future<List<String>> getAuditoriums() async {
  try {
    var token_attempt = await ChsuService.authenticate();
    var token = unwrapResponse<DataModelString>(token_attempt);

    var client = HttpClient();
    var req = await client.get("api.chsu.ru", 80, "/api/auditorium/v1"); // Изменил endpoint на комнаты
    req.headers.add("Authorization", "Bearer ${token.data}");
    var unwrapped = await req.close();
    var stringData = await unwrapped.transform(utf8.decoder).join();

    //debugPrint(stringData);

    // Парсим JSON
    List<dynamic> data = jsonDecode(stringData);
    
    // Фильтруем аудитории по buildName и преобразуем в номера
    List<String> classrooms = data
        .where((item) => item['buildName'] == "Учебно-лабораторный корпус № 1 (Советский, 8)")
        .map<String>((item) => item['number'] as String)
        .toList();
    
    return classrooms;
  } catch (e) {
    // В случае ошибки возвращаем пустой список
    debugPrint('Error: $e');
    return [];
  }
}
Future<void> _loadTutors() async {
  List<String> tutors = await getTutors();
  setState(() {
    _tutors = tutors;
  });
}

Future<List<String>> getTutors() async {
  try {
    var token_attempt = await ChsuService.authenticate();
    var token = unwrapResponse<DataModelString>(token_attempt);

    var client = HttpClient();
    var req = await client.get("api.chsu.ru", 80, "/api/teacher/v1"); // Endpoint для преподавателей
    req.headers.add("Authorization", "Bearer ${token.data}");
    var unwrapped = await req.close();
    var stringData = await unwrapped.transform(utf8.decoder).join();

    //debugPrint(stringData);

    // Парсим JSON
    List<dynamic> data = jsonDecode(stringData);
    
    // Преобразуем каждый элемент в ФИО (поле fio)
    List<String> teachers = data
        .map<String>((item) => item['fio'] as String)
        .toList();
    
    return teachers;
  } catch (e) {
    // В случае ошибки возвращаем пустой список
    debugPrint('Error: $e');
    return [];
  }
}

Future<void> _loadSchedule() async {
  String startDate = _formatDate(_rangeStart ?? _selectedDay ?? DateTime.now());
  String endDate = _formatDate(_rangeEnd ?? _selectedDay ?? DateTime.now());
  
  // Используем _searchValue вместо жестко заданной группы
  List<ScheduleCard> scheduleItems = await getSchedule(startDate, endDate, _searchValue);
  setState(() {
    _scheduleItems = scheduleItems;
  });
}

Future<List<ScheduleCard>> getSchedule(String startDate, String endDate, String searchValue) async {
  try {
    var token_attempt = await ChsuService.authenticate();
    var token = unwrapResponse<DataModelString>(token_attempt);

    var client = HttpClient();
    
    // Добавляем параметры дат в endpoint
    var url = "/api/timetable/v1/event/from/$startDate/to/$endDate";
    var req = await client.get("api.chsu.ru", 80, url);
    req.headers.add("Authorization", "Bearer ${token.data}");
    var unwrapped = await req.close();
    var stringData = await unwrapped.transform(utf8.decoder).join();

    //debugPrint(stringData);

    // Парсим JSON
    List<dynamic> data = jsonDecode(stringData);
    
    // Фильтруем занятия в зависимости от выбранной цели
    List<ScheduleCard> schedule = data
        .where((item) {
          switch (_selectedTarget) {
            case ScheduleTarget.student:
              // Фильтр по группе
              if (item['groups'] != null) {
                for (var group in item['groups']) {
                  if ((group['title'] as String).toLowerCase() == searchValue.toLowerCase()) {
                    return true;
                  }
                }
              }
              return false;
              
            case ScheduleTarget.tutor:
              // Фильтр по преподавателю
              if (item['lecturers'] != null) {
                for (var lecturer in item['lecturers']) {
                  if ((lecturer['fio'] as String).toLowerCase() == searchValue.toLowerCase()) {
                    return true;
                  }
                }
              }
              return false;
              
            case ScheduleTarget.auditorium:
              // Фильтр по аудитории
              if (item['auditory'] != null) {
                return (item['auditory']['title'] as String).toLowerCase() == searchValue.toLowerCase();
              }
              return false;
          }
        })
        .map<ScheduleCard>((item) {
          // Формируем timeSlot из startTime и endTime
          String timeSlot = '${item['startTime']} - ${item['endTime']}';
          
          // Получаем название дисциплины
          String subjectName = item['discipline']['title'];
          
          // Получаем тип занятия
          String lessonType = item['lessontype'];
          
          // Получаем преподавателей (множество ФИО)
          Set<String> tutors = {};
          if (item['lecturers'] != null) {
            for (var lecturer in item['lecturers']) {
              tutors.add(lecturer['fio'] as String);
            }
          }
          
          // Получаем группы (множество названий)
          Set<String> studentGroups = {};
          if (item['groups'] != null) {
            for (var group in item['groups']) {
              studentGroups.add(group['title'] as String);
            }
          }
          
          // Получаем кабинет
          String? cabinet = item['auditory']['title'];
          
          // Получаем местоположение
          String? location = item['build']['title'];
          return ScheduleCard(
            timeSlot: timeSlot,
            subjectName: subjectName,
            lessonType: lessonType,
            tutors: tutors.isNotEmpty ? tutors : null,
            studentGroups: studentGroups.isNotEmpty ? studentGroups : null,
            cabinet: cabinet,
            location: location,
          );
        }).toList();
    
    return schedule;
  } catch (e) {
    // В случае ошибки возвращаем пустой список
    debugPrint('Error: $e');
    return [];
  }
}

String _formatDate(DateTime date) {
  return "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // форма запроса расписания
        AnimatedFormContainer(
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          formWidget: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 8,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ScheduleTargetSelector(
                  selectedTarget: _selectedTarget,
                  onSelectionChanged: (newTarget) {
                    setState(() => _selectedTarget = newTarget);
                    // Сбрасываем валидность при смене цели
                    _updateSearchFieldValidation(false);
                    // Сбрасываем значение поиска
                    _updateSearchValue('');
                  }
                ),
                
                SizedBox(height: 8),
                
                ScheduleSearchField(
                  selectedTarget: _selectedTarget,
                  groups: _groups,
                  tutors: _tutors,
                  auditoriums: _auditoriums,
                  onValidationChanged: _updateSearchFieldValidation,
                  onValueChanged: _updateSearchValue, // Передаем callback для значения
                ),
                
                ScheduleDatePicker(
                  focusedDay: _focusedDay,
                  selectedDay: _selectedDay,
                  rangeStart: _rangeStart,
                  rangeEnd: _rangeEnd,
                  rangeSelectionMode: _rangeSelectionMode,
                  calendarFormat: _calendarFormat,
                  
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(_selectedDay, selectedDay)) {
                      setState(() {
                        _rangeSelectionMode = RangeSelectionMode.toggledOff;
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                        _rangeStart = null;
                        _rangeEnd = null;
                      });
                      _checkDateSelected(); // Вызываем проверку даты
                    }
                  },

                  onRangeSelected: (start, end, focusedDay) {
                    setState(() {
                      _rangeSelectionMode = RangeSelectionMode.toggledOn;
                      _selectedDay = start;
                      _focusedDay = focusedDay;
                      _rangeStart = start;
                      _rangeEnd = end;
                    });
                    _checkDateSelected(); // Вызываем проверку даты
                  },
                  
                  onFormatChanged: (format) {
                    if (_calendarFormat != format) {
                      setState(() {
                        _calendarFormat = format;
                      });
                    }
                  },
                  
                  onPageChanged: (focusedDay) {
                    _focusedDay = focusedDay;
                  },
                ),

                //SizedBox(height: 10),

                FilledButton(
                  style: FilledButton.styleFrom(alignment: Alignment.center),
                  onPressed: (_isSearchFieldValid && _isDateSelected) ? () async {
                    try {
                      await _loadSchedule();
                    } catch (e) {
                      debugPrint('Ошибка загрузки расписания: $e');
                    }
                  } : null,
                  child: const Text('Показать')
                )
              ],
            ),
          ),
        ),

        // выдача расписания
        Expanded(
          child: ListView(
            controller: _scrollController,
            padding: const EdgeInsets.all(16.0),
            children: <Widget>[
              ScheduleQueryView(
                title: _dateFormat.format(_focusedDay.toUtc()),
                cards: _scheduleItems,
              ),
            ],
          ),
        ),
      ],
    );
  }
}