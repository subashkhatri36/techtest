import 'package:flutter/material.dart';
import 'package:techtest/Widgets/check_box.dart';

class HeadingText extends StatelessWidget {
  const HeadingText(this.text,
      {super.key, this.isCheckBox = false, this.value = true, this.onChange});
  final String text;
  final bool isCheckBox;
  final Function(bool?)? onChange;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      text,
                      style: Theme.of(context).textTheme.headline3?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  if (isCheckBox)
                    TechCheckBox(
                      value: value,
                      onchange: onChange,
                    ),
                ],
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
