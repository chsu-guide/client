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
  final DateFormat _dateFormat = DateFormat("E, dd.MM.yyyy");

  CalendarFormat _calendarFormat = CalendarFormat.month;

  // Добавляем переменные для отслеживания валидности
  bool _isSearchFieldValid = false;
  bool _isDateSelected = false; 

  final List<String> _groups = [
    "1ПИб-02-1оп-22",
  ];
  final List<String> _tutors = [
    "Пышницкий Константин Михайлович"
  ];
  List<String> _auditoriums = [
    "201 (Советский, 8)"
  ];
  final List<ScheduleCard> _scheduleItems = [
      ScheduleCard(
        timeStart: "08:30",
        timeEnd: "10:00",
        subjectName: "Java-программирование",
        tutorName: "Пышницкий Константин Михайлович",
        type: "лекция",
        location: "205 (Советский, 8)",
      ),
      ScheduleCard(
        timeStart: "08:30",
        timeEnd: "10:00",
        subjectName: "Java-программирование",
        tutorName: "Пышницкий Константин Михайлович",
        type: "лекция",
        location: "205 (Советский, 8)",
      ),
      ScheduleCard(
        timeStart: "08:30",
        timeEnd: "10:00",
        subjectName: "Java-программирование",
        tutorName: "Пышницкий Константин Михайлович",
        type: "лекция",
        location: "205 (Советский, 8)",
      ),
      ScheduleCard(
        timeStart: "08:30",
        timeEnd: "10:00",
        subjectName: "Java-программирование",
        tutorName: "Пышницкий Константин Михайлович",
        type: "лекция",
        location: "205 (Советский, 8)",
      ),
      ScheduleCard(
        timeStart: "08:30",
        timeEnd: "10:00",
        subjectName: "Java-программирование",
        tutorName: "Пышницкий Константин Михайлович",
        type: "лекция",
        location: "205 (Советский, 8)",
      ),
      ScheduleCard(
        timeStart: "08:30",
        timeEnd: "10:00",
        subjectName: "Java-программирование",
        tutorName: "Пышницкий Константин Михайлович",
        type: "лекция",
        location: "205 (Советский, 8)",
      )
    ];

  @override
  void initState() {
    super.initState();
  }

  // Метод для обновления состояния валидности поля поиска
  void _updateSearchFieldValidation(bool isValid) {
    setState(() {
      _isSearchFieldValid = isValid;
    });
  }

  void _checkDateSelected() {
    setState(() {
      // Проверяем, выбрана ли одиночная дата ИЛИ выбран диапазон дат
      _isDateSelected = (_selectedDay != null) || (_rangeStart != null && _rangeEnd != null);
    });
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
                  }
                ),
                
                SizedBox(height: 8),
                
                ScheduleSearchField(
                  selectedTarget: _selectedTarget,
                  groups: _groups,
                  tutors: _tutors,
                  auditoriums: _auditoriums,
                  onValidationChanged: _updateSearchFieldValidation,
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
                      final response = await ChsuService.service.apiAuditoriumV1Get();
                      final List<AuditoriumModel> list = unwrapResponse<List<AuditoriumModel>>(response);
                      setState(() {
                        var a = list.whereType<AuditoriumModel>().map((a) {
                          final num = a.number ?? a.name ?? '';
                          final build = (a.buildName != null && a.buildName!.isNotEmpty) ? ' (${a.buildName})' : '';
                          return '$num $build';
                        }).toList();
                        _auditoriums = a;
                        debugPrint(a.toString());
                      });
                    } catch (e) {
                      debugPrint('Ошибка загрузки аудиторий: $e');
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