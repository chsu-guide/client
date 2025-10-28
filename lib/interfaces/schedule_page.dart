

import 'package:chsu_schedule_app/classes/schedule_target.dart';
import 'package:chsu_schedule_app/widgets/schedule_card.dart';
import 'package:chsu_schedule_app/widgets/schedule_date_picker.dart';
import 'package:chsu_schedule_app/widgets/schedule_form_drawer.dart';
import 'package:chsu_schedule_app/widgets/schedule_query_view.dart';
import 'package:chsu_schedule_app/widgets/schedule_search_field.dart';
import 'package:chsu_schedule_app/widgets/schedule_target_selector.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:table_calendar/table_calendar.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  final _formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();

  ScheduleTarget _selectedTarget = ScheduleTarget.student;

  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOn;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  final DateFormat _dateFormat = DateFormat("E, dd.MM.yyyy");

  CalendarFormat _calendarFormat = CalendarFormat.month;

  // Добавляем переменную для отслеживания валидности формы
  bool _isFormValid = false;
  bool _isDateSelected = false; 

  final List<String> _groups = [
    "1ПИб-02-1оп-22",
    "1ПИб-02-2оп-22",
    "1ПИб-02-3оп-22",
  ];
  final List<String> _tutors = [
    "Пышницкий Константин Михайлович",
    "Селяничев Олег Леонидович",
  ];
  final List<String> _auditoriums = [
    "201 (Советский, 8)",
    "202 (Советский, 8)",
    "203 (Советский, 8)",
    "204 (Советский, 8)",
    "205 (Советский, 8)",
  ];
  final Map<int, List<ScheduleCard>> _scheduleItems = {
    0: [
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
    ],
  };

  @override
  void initState() {
    super.initState();
  }

  // Метод для валидации формы и обновления состояния
  void _validateForm() {
    setState(() {
      _isFormValid = _formKey.currentState?.validate() ?? false;
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
            child: Form(
              key: _formKey,
              child: Column(
                spacing: 8,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ScheduleTargetSelector(
                    selectedTarget: _selectedTarget,
                    onSelectionChanged: (newTarget) {
                      setState(() => _selectedTarget = newTarget);
                      _validateForm(); // Вызываем валидацию при смене цели
                    }
                  ),
                  
                  SizedBox(height: 8),
                  
                  ScheduleSearchField(
                    selectedTarget: _selectedTarget,
                    groups: _groups,
                    tutors: _tutors,
                    auditoriums: _auditoriums,
                    onValidationChanged: _validateForm, // Передаем callback
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
                          _rangeStart = null; // Очищаем диапазон, если выбрана одна дата
                          _rangeEnd = null;
                        });
                        _checkDateSelected(); // Вызываем проверку даты
                      }
                    },

                    onRangeSelected: (start, end, focusedDay) {
                      setState(() {
                        _rangeSelectionMode = RangeSelectionMode.toggledOn;
                        _selectedDay = start; // Очищаем одиночную дату, если выбран диапазон
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
                    child: const Text('Показать'),
                    onPressed: (_isFormValid && _isDateSelected) ? () {
                    } : null,
                  )
                ],
              ),
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
                cards: _scheduleItems[0],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
