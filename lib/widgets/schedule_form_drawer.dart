import 'package:flutter/material.dart';

class AnimatedFormContainer extends StatefulWidget {
  final Widget formWidget;
  final Color backgroundColor;
  const AnimatedFormContainer({
    super.key,
    required this.backgroundColor,
    required this.formWidget
  });
  
  @override
  State<StatefulWidget> createState() => _AnimatedFormContainerState();
}

class _AnimatedFormContainerState extends State<AnimatedFormContainer> {
 bool _isFormExpanded = true;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: false,
      //expansionAnimationStyle: AnimationStyle(...),
      onExpansionChanged: (val) => setState(() => _isFormExpanded = val),
      title: _isFormExpanded ? const Text(" ") : const Text("Сюда вписать выбранный диапазон дат"),
      subtitle: _isFormExpanded ? const Text(" ") : const Text("Сюда вписать остальное"),
      backgroundColor: widget.backgroundColor,
      trailing: Icon(_isFormExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: widget.backgroundColor
          ),
          child: widget.formWidget
        )
      ],
    );
  }
}