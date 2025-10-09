import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

enum ScheduleTarget {
  student,
  tutor,
  auditorium
}

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  final _formKey = GlobalKey<FormState>();
  ScheduleTarget selectedTarget = ScheduleTarget.student;
  String selectedFirstField = "";

  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOn;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  CalendarFormat _calendarFormat = CalendarFormat.month;

  List<String> groups = ["1ПИб-02-1оп-22", "1ПИб-02-2оп-22", "1ПИб-02-3оп-22"];
  List<String> tutors = ["Пышницкий Константин Михайлович", "Селяничев Олег Леонидович"];
  List<String> auditoriums = ["201","202","203","204","205"];

  List<String> getFirstFieldOptions(ScheduleTarget selectedTarget) {
    switch (selectedTarget) {
      case ScheduleTarget.tutor:
        return tutors;
      case ScheduleTarget.auditorium:
        return auditoriums;
      case ScheduleTarget.student:
        return groups;
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  SingleChoice(),

                  SizedBox(height: 16),

                  DropdownButtonFormField<String>(
                    items: getFirstFieldOptions(selectedTarget)
                    .map((option) => DropdownMenuItem(
                        value: option,
                        child: Text(option),
                      ))
                    .toList(),
                    initialValue: groups[0],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Группа"
                    ),
                    onChanged: (value) {
                      setState(() {
                        selectedFirstField = value!;
                      });
                    },
                  ),

                  SizedBox(height: 16),

                  TableCalendar(
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: _focusedDay,
                    locale: "ru-RU",
                    calendarFormat: _calendarFormat,
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    headerStyle: HeaderStyle( formatButtonVisible : false,),
                    rangeSelectionMode: _rangeSelectionMode,
                    rangeStartDay: _rangeStart,
                    rangeEndDay: _rangeEnd,
                    
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      if (!isSameDay(_selectedDay, selectedDay)) {
                        setState(() {
                          _selectedDay = selectedDay;
                          _focusedDay = focusedDay;
                          _rangeStart = null; // Important to clean those
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
                        // Call `setState()` when updating calendar format
                        setState(() {
                          _calendarFormat = format;
                        });
                      }
                    },
                    onPageChanged: (focusedDay) {
                      // No need to call `setState()` here
                      _focusedDay = focusedDay;
                    },
                  ),

                  SizedBox(height: 16),

                  /*TextFormField(
                    readOnly: true,
                    initialValue: selectedDay.toLocal().toString().split(' ')[0],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Дата"
                    ),
                    onTap: () {
                      showDateRangePicker(
                        context: context,
                        initialDateRange: DateTimeRange(
                          start: DateTime.now(),
                          end: DateTime.now()
                        ),
                        firstDate: DateTime(2025),
                        lastDate: DateTime(2026),
                        helpText: 'Выберите дату',
                        saveText: 'Установить',
                        locale: const Locale('ru', 'RU'),
                      ).then((value) {
                        if (value != null) {
                          setState(() {
                            selectedDay = value.start;
                          });
                        }
                      });
                    },
                  ),*/

                  SizedBox(height: 16),

                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Получаю расписание...')),
                        );
                      }
                    },
                    child: const Text('Показать'),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});

  @override
  State<StatefulWidget> createState() => _SingleChoiceState();
}

// фу, сразу к ScheduleTarget привязано - а если такие кнопки ещё где-нибкдь понадобятся??
class _SingleChoiceState extends State<SingleChoice> {
  ScheduleTarget selectedTarget = ScheduleTarget.student;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<ScheduleTarget> (
      showSelectedIcon: false,
      segments: const [
        ButtonSegment<ScheduleTarget>(
          value: ScheduleTarget.student,
          label: Text("Студент")
        ),
        ButtonSegment<ScheduleTarget>(
          value: ScheduleTarget.tutor,
          label: Text("Преподаватель", overflow: TextOverflow.ellipsis)
        ),
        ButtonSegment<ScheduleTarget>(
          value: ScheduleTarget.auditorium,
          label: Text("Аудитория")
        ),
      ],
      style: const ButtonStyle(
       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
       visualDensity: VisualDensity(horizontal: -3, vertical: -1)
      ),
      selected: <ScheduleTarget>{selectedTarget},
      onSelectionChanged: (Set<ScheduleTarget> newSelection) {
        setState(() {
          selectedTarget = newSelection.first;
        });
      },
    );
  }
}

//ascfasfaf