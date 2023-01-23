import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key, this.hintText, this.controller, this.onchange});
  final String? hintText;
  final TextEditingController? controller;
  final Function(String?)? onchange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onchange,
      decoration: InputDecoration(
        focusColor: Colors.white,
        hintText: hintText,
        //make hint text
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontFamily: "verdana_regular",
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
