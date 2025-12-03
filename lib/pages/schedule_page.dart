import 'package:chsu_schedule_app/api/client.dart';
import 'package:chsu_schedule_app/api/schedule.dart';

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
  final ChsuApiService _chsuApiService = ChsuApiService(null);
  final ScrollController _scrollController = ScrollController();
  final ExpansibleController _formController = ExpansibleController();
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
  bool _isSheduleLoading = false;
  bool _isFormExpanded = true;

  // Добавляем переменную для хранения значения поиска
  String _searchValue = '';

  List<String> _groups = [];
  List<String> _tutors = [];
  List<String> _auditoriums = [];

  Map<DateTime, List<ScheduleCard>> _scheduleItems = {};

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  Future<void> _initializeData() async {
    setState(() => _isLoading = true);

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
      _isDateSelected =
          (_selectedDay != null) || (_rangeStart != null && _rangeEnd != null);
    });
  }

  Future<void> _loadGroups() async {
    List<Group> prelimGroups = await _chsuApiService.getGroupList();
    debugPrint('First group is ${prelimGroups[0].name}');
    List<String> groups = (await _chsuApiService.getGroupList())
        .map((group) => group.name ?? "")
        .toList();
    debugPrint('Group list is ${groups.length} items long');
    setState(() {
      _groups = groups;
    });
  }

  Future<void> _loadAuditoriums() async {
    List<String> auditoriums = (await _chsuApiService.getAuditoriumList())
        .map((auditorium) => auditorium.name!)
        .whereType<String>()
        .toList();
    setState(() {
      _auditoriums = auditoriums;
    });
  }

  Future<void> _loadTutors() async {
    List<String> tutors = (await _chsuApiService.getTeacherList())
        .map((tutor) => tutor.fullName)
        .whereType<String>()
        .toList();
    setState(() {
      _tutors = tutors;
    });
  }

  bool _isValidInput() {
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
    DateTime startDate = _rangeStart ?? _selectedDay ?? DateTime.now();
    DateTime endDate = _rangeEnd ?? _selectedDay ?? DateTime.now();
    // Костыль - Запрос в бэке учитывает в том числе и время
    endDate = endDate.add(const Duration(hours: 23, minutes: 59));

    // Используем _searchValue вместо жестко заданной группы
    List<ScheduleItem> items = await switch (_selectedTarget) {
      ScheduleTarget.auditorium => _chsuApiService.getAuditoriumScheduleByName(
        _searchValue,
        startDate,
        endDate,
      ),
      ScheduleTarget.student => _chsuApiService.getStudentScheduleByName(
        _searchValue,
        startDate,
        endDate,
      ),
      ScheduleTarget.tutor => _chsuApiService.getTeacherScheduleByName(
        _searchValue,
        startDate,
        endDate,
      ),
    };
    debugPrint('Found ${items.length} schedule items');

    List<ScheduleCard> scheduleItems = items
        .map((item) => item.toCard())
        .toList();
    debugPrint('Got ${scheduleItems.length} schedule cards');
    Map<DateTime, List<ScheduleCard>> groupedByDate = {};

    for (var card in scheduleItems) {
      // Используем дату из карточки для группировки
      // Предполагается, что в ScheduleCard есть метод или поле для получения даты
      DateTime cardDate = card.date;

      DateTime dateOnly = DateTime(cardDate.year, cardDate.month, cardDate.day);

      if (!groupedByDate.containsKey(dateOnly)) {
        groupedByDate[dateOnly] = [];
      }
      groupedByDate[dateOnly]!.add(card);
    }

    setState(() {
      _scheduleItems = groupedByDate;
    });
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
          controller: _formController,
          onExpansionChanged: (isFormExpanded) {
            setState(() => _isFormExpanded = isFormExpanded);
            _updateSearchValue(_searchValue);
            if (_isValidInput()) {
              // Сбрасываем валидность при смене цели
              _updateSearchFieldValidation(true);
            } else {
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
                    if (_isValidInput()) {
                      // Сбрасываем валидность при смене цели
                      _updateSearchFieldValidation(true);
                    } else {
                      // Сбрасываем валидность при смене цели
                      _updateSearchFieldValidation(false);
                      // Сбрасываем значение поиска
                    }
                  },
                ),

                SizedBox(height: 8),

                ScheduleSearchField(
                  selectedTarget: _selectedTarget,
                  groups: _groups,
                  tutors: _tutors,
                  auditoriums: _auditoriums,
                  onValidationChanged: _updateSearchFieldValidation,
                  onValueChanged:
                      _updateSearchValue, // Передаем callback для значения
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
                  onPressed:
                      (_isSearchFieldValid &&
                          _isDateSelected &&
                          !_isSheduleLoading)
                      ? () async {
                          _isSheduleLoading = true;
                          try {
                            _formController.collapse();
                            await _loadSchedule();
                          } catch (e) {
                            debugPrint('Ошибка загрузки расписания: $e');
                            debugPrintStack();
                          } finally {
                            _isSheduleLoading = false;
                          }
                        }
                      : null,
                  child: const Text('Показать'),
                ),
              ],
            ),
          ),
        ),

        // Индикатор загрузки расписания
        Visibility(
          visible: _isSheduleLoading,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Center(child: CircularProgressIndicator()),
          ),
        ),

        //расписание не найдено
        Visibility(
          visible: _scheduleItems.isEmpty && !_isSheduleLoading,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Expanded(
                child: Text(
                  'По заданным параметрам не найдено расписание. Задайте другие параметры запроса.',
                  overflow: TextOverflow.clip,
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),

        //Выдача расписания
        Visibility(
          visible: _scheduleItems.isNotEmpty && !_isSheduleLoading,
          child: Expanded(
            child: ListView(
              controller: _scrollController,
              padding: const EdgeInsets.all(16.0),
              children: _scheduleItems.entries.map((entry) {
                DateTime date = entry.key;
                List<ScheduleCard> cards = entry.value;
                return ScheduleQueryView(
                  title: _dateFormat.format(date),
                  cards: cards,
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
