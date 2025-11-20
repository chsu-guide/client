import 'package:chsu_schedule_app/network/chsu_service.dart';

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
  final ChsuService _chsuService = ChsuService();
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
  bool _isLoading = false;
  bool _isFormExpanded = true;

  // Добавляем переменную для хранения значения поиска
  String _searchValue = '';

  List<String> _groups = [];
  List<String> _tutors = [];
  List<String> _auditoriums = [];

  List<ScheduleCard> _scheduleItems = [];

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  Future<void> _initializeData() async {
    setState(() => _isLoading = true);
    
    await _chsuService.authenticate();
    await _loadGroups();
    await _loadTutors();
    await _loadAuditoriums();
    
    setState(() => _isLoading = false);
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
      List<String> groups = await _chsuService.getGroups();
      setState(() {
        _groups = groups;
      });
    }

  Future<void> _loadAuditoriums() async {
  List<String> auditoriums = await _chsuService.getAuditoriums();
  setState(() {
    _auditoriums = auditoriums;
  });
}

Future<void> _loadTutors() async {
  List<String> tutors = await _chsuService.getTutors();
  setState(() {
    _tutors = tutors;
  });
}

bool _isValidInput(){
if (_searchValue.isEmpty) return false;
    
    switch (_selectedTarget) {
      case ScheduleTarget.student:
        return _groups.contains(_searchValue);
      case ScheduleTarget.tutor:
        return _tutors.contains(_searchValue);
      case ScheduleTarget.auditorium:
        return _auditoriums.contains(_searchValue);
    }
}
Future<void> _loadSchedule() async {
  String startDate = _formatDate(_rangeStart ?? _selectedDay ?? DateTime.now());
  String endDate = _formatDate(_rangeEnd ?? _selectedDay ?? DateTime.now());
  
  // Используем _searchValue вместо жестко заданной группы
  List<ScheduleCard> scheduleItems = await _chsuService.getSchedule(startDate, endDate, _selectedTarget, _searchValue);
  
  setState(() {
      _scheduleItems = scheduleItems;
      // Закрываем форму, если получены карточки
      if (scheduleItems.isNotEmpty) {
        _isFormExpanded = false;
      }
    });
}

String _formatDate(DateTime date) {
  return "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
}

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    return Column(
      children: <Widget>[
        // форма запроса расписания
        AnimatedFormContainer(
          backgroundColor: Theme.of(context).colorScheme.onPrimary,

          isExpanded: _isFormExpanded,
          onExpansionChanged: (isFormExpanded) {
            setState(() => _isFormExpanded = isFormExpanded);
            _updateSearchValue(_searchValue);
            if (_isValidInput()){
                      // Сбрасываем валидность при смене цели
                      _updateSearchFieldValidation(true);
                    }
                    else {
                      // Сбрасываем валидность при смене цели
                      _updateSearchFieldValidation(false);
                    }
          },

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
                    if (_isValidInput()){
                      // Сбрасываем валидность при смене цели
                      _updateSearchFieldValidation(true);
                    }
                    else {
                      // Сбрасываем валидность при смене цели
                      _updateSearchFieldValidation(false);
                      // Сбрасываем значение поиска
                    }
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
        Visibility(
          visible: _scheduleItems.isEmpty,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Expanded(
                child: Text(
                  'По заданным параметрам не найдено расписание. Задайте другие параметры запроса.', 
                  overflow: TextOverflow.clip
                )
              ),
              SizedBox(height: 50)
            ],
          )
        ),
        
        Visibility(
          visible: _scheduleItems.isNotEmpty,
          child: Expanded(
            child: ListView(
              controller: _scrollController,
              padding: const EdgeInsets.all(16.0),
              children: <Widget>[
                ScheduleQueryView(
                      title: _rangeStart == null ? "" : _dateFormat.format(_rangeStart!.toUtc()),
                      cards: _scheduleItems,
                    )
              ],
            ),
          )
        ),
      ],
    );
  }
}