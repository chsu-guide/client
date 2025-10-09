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

  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOn;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  CalendarFormat _calendarFormat = CalendarFormat.month;

  List<String> groups = ["1ПИб-02-1оп-22", "1ПИб-02-2оп-22", "1ПИб-02-3оп-22"];
  List<String> tutors = ["Пышницкий Константин Михайлович", "Селяничев Олег Леонидович"];
  List<String> auditoriums = ["201 (Советский, 8)", "202 (Советский, 8)", "203 (Советский, 8)", "204 (Советский, 8)", "205 (Советский, 8)"];

  List<String> getOptionsForInputField(ScheduleTarget selectedTarget) {
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
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  SegmentedButton<ScheduleTarget> (
                    showSelectedIcon: false,
                    segments: const [
                      ButtonSegment<ScheduleTarget>(
                        value: ScheduleTarget.student,
                        label: Text("Студент", overflow: TextOverflow.ellipsis),
                      ),
                      ButtonSegment<ScheduleTarget>(
                        value: ScheduleTarget.tutor,
                        label: Text("Преподаватель", overflow: TextOverflow.ellipsis),
                      ),
                      ButtonSegment<ScheduleTarget>(
                        value: ScheduleTarget.auditorium,
                        label: Text("Аудитория", overflow: TextOverflow.ellipsis),
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
                  ),

                  SizedBox(height: 16),

                  Autocomplete<String>(
                    optionsBuilder: (TextEditingValue textEditingValue) {
                      if (textEditingValue.text == '') {
                        return const Iterable<String>.empty();
                      }
                      return getOptionsForInputField(selectedTarget).where((String option) {
                        return option.toLowerCase().contains(textEditingValue.text.toLowerCase());
                      });
                    },
                    fieldViewBuilder: (context, controller, focusNode, onEditingComplete) {
                      return TextFormField(
                        controller: controller,
                        focusNode: focusNode,
                        onEditingComplete: onEditingComplete,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder()
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Это поле не может быть пустым';
                          }
                          return null;
                        },
                      );
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
                        setState(() {
                          _calendarFormat = format;
                        });
                      }
                    },
                    onPageChanged: (focusedDay) {
                      _focusedDay = focusedDay;
                    },
                  ),

                  SizedBox(height: 10),

                  FilledButton(
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