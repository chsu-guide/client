import 'package:chsu_schedule_app/widgets/schedule_card.dart';
import 'package:chsu_schedule_app/widgets/schedule_week.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

enum ScheduleTarget { student, tutor, auditorium }

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  final _formKey = GlobalKey<FormState>();
  ScheduleTarget _selectedTarget = ScheduleTarget.student;

  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOn;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  final DateFormat _dateFormat = DateFormat("E, dd.MM.yyyy");

  CalendarFormat _calendarFormat = CalendarFormat.month;

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
    ],
  };

  List<String> getOptionsForInputField(ScheduleTarget selectedTarget) {
    switch (selectedTarget) {
      case ScheduleTarget.tutor:
        return _tutors;
      case ScheduleTarget.auditorium:
        return _auditoriums;
      case ScheduleTarget.student:
        return _groups;
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 560,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              color: Theme.of(context).colorScheme.onPrimary,
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SegmentedButton<ScheduleTarget>(
                      showSelectedIcon: false,
                      segments: const [
                        ButtonSegment<ScheduleTarget>(
                          value: ScheduleTarget.student,
                          label: Text(
                            "Студент",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        ButtonSegment<ScheduleTarget>(
                          value: ScheduleTarget.tutor,
                          label: Text(
                            "Преподаватель",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        ButtonSegment<ScheduleTarget>(
                          value: ScheduleTarget.auditorium,
                          label: Text(
                            "Аудитория",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                      style: const ButtonStyle(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity(
                          horizontal: -3,
                          vertical: -1,
                        ),
                      ),
                      selected: <ScheduleTarget>{_selectedTarget},
                      onSelectionChanged: (Set<ScheduleTarget> newSelection) {
                        setState(() {
                          _selectedTarget = newSelection.first;
                        });
                      },
                    ),

                    Expanded(
                      child: Autocomplete<String>(
                        optionsBuilder: (TextEditingValue textEditingValue) {
                          if (textEditingValue.text == '') {
                            return const Iterable<String>.empty();
                          }
                          return getOptionsForInputField(_selectedTarget).where(
                            (String option) {
                              return option.toLowerCase().contains(
                                textEditingValue.text.toLowerCase(),
                              );
                            },
                          );
                        },
                        fieldViewBuilder:
                            (
                              context,
                              controller,
                              focusNode,
                              onEditingComplete,
                            ) {
                              return TextFormField(
                                controller: controller,
                                focusNode: focusNode,
                                onEditingComplete: onEditingComplete,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  var validation = value?.isNotEmpty ?? true;
                                  switch (_selectedTarget) {
                                    case ScheduleTarget.student:
                                      return validation
                                          ? (_groups.contains(value)
                                                ? null
                                                : "Группа не найдена")
                                          : "Введите номер группы";
                                    case ScheduleTarget.tutor:
                                      return validation
                                          ? (_tutors.contains(value)
                                                ? null
                                                : "Преподаватель не найден")
                                          : "Введите ФИО преподавателя";
                                    case ScheduleTarget.auditorium:
                                      return validation
                                          ? (_auditoriums.contains(value)
                                                ? null
                                                : "Аудитория не найдена")
                                          : "Введите номер аудитории";
                                  }
                                },
                              );
                            },
                      ),
                    ),

                    TableCalendar(
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: _focusedDay,
                      locale: "ru-RU",
                      sixWeekMonthsEnforced: true,
                      calendarFormat: _calendarFormat,
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                      ),
                      rangeSelectionMode: _rangeSelectionMode,
                      rangeStartDay: _rangeStart,
                      rangeEndDay: _rangeEnd,
                      availableGestures: AvailableGestures.horizontalSwipe,
                      calendarStyle: CalendarStyle(
                        isTodayHighlighted: false,
                        rangeStartDecoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        rangeEndDecoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),

                      selectedDayPredicate: (day) {
                        return isSameDay(_selectedDay, day);
                      },
                      onDaySelected: (selectedDay, focusedDay) {
                        if (!isSameDay(_selectedDay, selectedDay)) {
                          setState(() {
                            _selectedDay = selectedDay;
                            _focusedDay = focusedDay;
                            _rangeStart = null;
                            _rangeEnd = null;
                            _rangeSelectionMode = RangeSelectionMode.toggledOff;
                          });
                        }
                      },
                      onRangeSelected: (start, end, focusedDay) {
                        setState(() {
                          _selectedDay = null;
                          _focusedDay = focusedDay;
                          _rangeStart = start;
                          _rangeEnd = end;
                          _rangeSelectionMode = RangeSelectionMode.toggledOn;
                        });
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

                    FilledButton(
                      child: const Text('Показать'),
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Получаю расписание...'),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        // Карточки расписания
        SliverPadding(
          padding: const EdgeInsets.all(16.0),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return ScheduleDayView(
                title: _dateFormat.format(_focusedDay.toUtc()),
                cards:
                    _scheduleItems[index] ??
                    <ScheduleCard>[
                      ScheduleCard(
                        timeStart: "timeStart",
                        timeEnd: "timeEnd",
                        subjectName: "subjectName",
                        tutorName: "tutorName",
                        type: "type",
                        location: "location",
                      ),
                    ],
              );
            }, childCount: 5),
          ),
        ),
      ],
    );
  }
}
