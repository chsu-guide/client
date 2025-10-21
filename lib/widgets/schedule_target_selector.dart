import 'package:chsu_schedule_app/classes/schedule_target.dart';
import 'package:flutter/material.dart';

class ScheduleTargetSelector extends StatelessWidget {
  final ScheduleTarget selectedTarget;
  final ValueChanged<ScheduleTarget> onSelectionChanged;

  const ScheduleTargetSelector(
    {
      super.key,
      required this.selectedTarget,
      required this.onSelectionChanged
    }
  );

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<ScheduleTarget>(
      showSelectedIcon: false,
      
      segments: const [
        ButtonSegment<ScheduleTarget>(
          value: ScheduleTarget.student,
          label: FractionallySizedBox(
            widthFactor: 1.5,
            child: Text(
              "Студент",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ),
        ButtonSegment<ScheduleTarget>(
          value: ScheduleTarget.tutor,
          label: FractionallySizedBox(
            widthFactor: 1.2, // дадим 120% доступной ширины
            child: Text(
              "Преподаватель",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
        ),
        ),
        ButtonSegment<ScheduleTarget>(
          value: ScheduleTarget.auditorium,
          label: FractionallySizedBox(
            widthFactor: 1.3,
            child: Text(
              "Аудитория",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ),
      ],
      
      style: const ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity(
          horizontal: -3,
          vertical: -1,
        ),
      ),

      selected: <ScheduleTarget>{selectedTarget},
      
      onSelectionChanged: (Set<ScheduleTarget> newSelection) {
        onSelectionChanged(newSelection.first);
      },
    );
  }
}