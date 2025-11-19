import 'package:chsu_schedule_app/classes/schedule_target.dart';
import 'package:flutter/material.dart';

class ScheduleSearchField extends StatefulWidget {
  final ScheduleTarget selectedTarget;
  final List<String> groups;
  final List<String> tutors;
  final List<String> auditoriums;
  final ValueChanged<bool> onValidationChanged;
  final ValueChanged<String> onValueChanged;

  const ScheduleSearchField({
    super.key,
    required this.selectedTarget,
    required this.groups,
    required this.tutors,
    required this.auditoriums,
    required this.onValidationChanged,
    required this.onValueChanged,
  });

  @override
  State<ScheduleSearchField> createState() => _ScheduleSearchFieldState();
}

class _ScheduleSearchFieldState extends State<ScheduleSearchField> {
  String _currentValue = '';

  List<String> get _options {
    switch (widget.selectedTarget) {
      case ScheduleTarget.tutor:
        return widget.tutors;
      case ScheduleTarget.auditorium:
        return widget.auditoriums;
      case ScheduleTarget.student:
        return widget.groups;
    }
  }

  bool _isValidInput(String value) {
    if (value.isEmpty) return false;
    
    switch (widget.selectedTarget) {
      case ScheduleTarget.student:
        return widget.groups.contains(value);
      case ScheduleTarget.tutor:
        return widget.tutors.contains(value);
      case ScheduleTarget.auditorium:
        return widget.auditoriums.contains(value);
    }
  }

  void _handleTextChanged(String text) {
    setState(() {
      _currentValue = text;
    });
    widget.onValueChanged(text);
    final isValid = _isValidInput(text);
    widget.onValidationChanged(isValid);
  }

  void _handleSuggestionSelected(String selection) {
    setState(() {
      _currentValue = selection;
    });
    widget.onValueChanged(selection);
    widget.onValidationChanged(true);
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
      onSelected: _handleSuggestionSelected,
      
      fieldViewBuilder: (context, controller, focusNode, onEditingComplete) {
        // Используем контроллер от Autocomplete, но отслеживаем изменения
        return TextField(
          controller: controller,
          focusNode: focusNode,
          onEditingComplete: onEditingComplete,
          onChanged: _handleTextChanged,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        );
      },
    );
  }
}