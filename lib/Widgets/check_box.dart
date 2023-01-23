import 'package:flutter/material.dart';

class TechCheckBox extends StatelessWidget {
  const TechCheckBox({super.key, this.value = false, this.onchange});
  final bool value;
  final Function(bool?)? onchange;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.green;
    }

    return Checkbox(
        fillColor: MaterialStateProperty.resolveWith(getColor),
        checkColor: Colors.white,
        value: value,
        onChanged: onchange);
  }
}
