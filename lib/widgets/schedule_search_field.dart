import 'package:chsu_schedule_app/classes/schedule_target.dart';
import 'package:flutter/material.dart';

class ScheduleSearchField extends StatelessWidget {
  final ScheduleTarget selectedTarget;
  final List<String> groups;
  final List<String> tutors;
  final List<String> auditoriums;
  final VoidCallback onValidationChanged; // Добавляем callback
  
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
    required this.onValidationChanged, // Делаем обязательным
  });

  String? _validator(String? value) {
    final validation = value?.isNotEmpty ?? false;
    
    switch (selectedTarget) {
      case ScheduleTarget.student:
        
        return validation ? (groups.contains(value) ? null : "") : "";
      case ScheduleTarget.tutor:
        return validation ? (tutors.contains(value) ? null : "") : "";
      case ScheduleTarget.auditorium:
        return validation ? (auditoriums.contains(value) ? null : "") : "";
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
        onValidationChanged();
      },
      
      fieldViewBuilder: (context, controller, focusNode, onEditingComplete)
      {
        return TextFormField(
          controller: controller,
          focusNode: focusNode,
          onEditingComplete: onEditingComplete,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (text) {
            onValidationChanged(); // Вызываем callback для обновления состояния родителя
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            ),
          validator: _validator,
          
        );
      },
    );
  }
}