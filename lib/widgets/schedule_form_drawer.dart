import 'package:flutter/material.dart';

class AnimatedFormContainer extends StatefulWidget {
  final Widget formWidget;
  final bool isExpanded;
  final Color backgroundColor;
  final ValueChanged<bool>? onExpansionChanged;
  
  const AnimatedFormContainer({
    super.key,
    required this.backgroundColor,
    required this.formWidget,
    this.isExpanded = true,
    this.onExpansionChanged
  });
  
  @override
  State<StatefulWidget> createState() => _AnimatedFormContainerState();
}

class _AnimatedFormContainerState extends State<AnimatedFormContainer> {
  late bool _isFormExpanded;

  @override
  void initState() {
    super.initState();
    _isFormExpanded = widget.isExpanded;
  }

  @override
  void didUpdateWidget(AnimatedFormContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isExpanded != widget.isExpanded) {
      setState(() {
        _isFormExpanded = widget.isExpanded;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: _isFormExpanded,
      onExpansionChanged: (val) {
        setState(() => _isFormExpanded = val);
        widget.onExpansionChanged?.call(val);
      },
      //Чтобы виджеты не пересоздавались ( Но это не точно:) )
      maintainState: true,

      title: _isFormExpanded ? const Text("Задайте параметры запроса.") : Text("Нажимите для раскрытия формы."),
      subtitle: const Text(""),
      
      backgroundColor: widget.backgroundColor,
      
      trailing: Icon(_isFormExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
      
      tilePadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      childrenPadding: EdgeInsets.zero,
      
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