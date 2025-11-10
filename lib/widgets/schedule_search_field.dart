import 'package:chsu_schedule_app/classes/schedule_target.dart';
import 'package:flutter/material.dart';

class ScheduleSearchField extends StatelessWidget {
  final ScheduleTarget selectedTarget;
  final List<String> groups;
  final List<String> tutors;
  final List<String> auditoriums;
  final ValueChanged<bool> onValidationChanged;
  
  List<String> get _options {
    switch (selectedTarget) {
      case ScheduleTarget.tutor:
        return tutors;
      case ScheduleTarget.auditorium:
        return auditoriums;
      case ScheduleTarget.student:
        return groups;
    }
  }

  const ScheduleSearchField({
    super.key,
    required this.selectedTarget,
    required this.groups,
    required this.tutors,
    required this.auditoriums,
    required this.onValidationChanged,
  });

  bool _isValidInput(String value) {
    if (value.isEmpty) return false;
    
    switch (selectedTarget) {
      case ScheduleTarget.student:
        return groups.contains(value);
      case ScheduleTarget.tutor:
        return tutors.contains(value);
      case ScheduleTarget.auditorium:
        return auditoriums.contains(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return _options.where(
          (String option) => option.toLowerCase().contains(textEditingValue.text.toLowerCase())
        );
      },
      onSelected: (String selection) {
        onValidationChanged(true);
      },
      
      fieldViewBuilder: (context, controller, focusNode, onEditingComplete) {
        return TextField(
          controller: controller,
          focusNode: focusNode,
          onEditingComplete: onEditingComplete,
          onChanged: (text) {
            // Проверяем валидность при каждом изменении текста
            final isValid = _isValidInput(text);
            onValidationChanged(isValid);
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        );
      },
    );
  }
}