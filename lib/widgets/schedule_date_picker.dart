import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleDatePicker extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime? selectedDay;
  final DateTime? rangeStart;
  final DateTime? rangeEnd;
  final RangeSelectionMode rangeSelectionMode;
  final CalendarFormat calendarFormat;

  final void Function(DateTime selectedDay, DateTime focusedDay) onDaySelected;
  final void Function(DateTime? start, DateTime? end, DateTime focusedDay) onRangeSelected;
  final void Function(CalendarFormat format) onFormatChanged;
  final void Function(DateTime focusedDay) onPageChanged;

  const ScheduleDatePicker({
    super.key,
    required this.focusedDay,
    required this.selectedDay,
    required this.rangeStart,
    required this.rangeEnd,
    required this.rangeSelectionMode,
    required this.calendarFormat,
    required this.onDaySelected,
    required this.onRangeSelected,
    required this.onFormatChanged,
    required this.onPageChanged
  });


  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: focusedDay,
      sixWeekMonthsEnforced: true,
      calendarFormat: calendarFormat,
      startingDayOfWeek: StartingDayOfWeek.monday,

      rangeSelectionMode: rangeSelectionMode,
      rangeStartDay: rangeStart,
      rangeEndDay: rangeEnd,
      
      locale: "ru-RU",
      availableGestures: AvailableGestures.horizontalSwipe,
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),
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
        return isSameDay(selectedDay, day);
      },

      onDaySelected: onDaySelected,
      onRangeSelected: onRangeSelected,
      onFormatChanged: onFormatChanged,
      onPageChanged: onPageChanged,
    );
  }
}