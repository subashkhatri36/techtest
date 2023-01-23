import 'package:flutter/material.dart';
import 'package:techtest/Widgets/heading_with_divider.dart';
import 'package:techtest/Widgets/input_field.dart';
import 'package:techtest/Widgets/tech_card.dart';
import 'package:techtest/core/dimension.dart';
import 'package:techtest/utils/strings.dart';

class CommentField extends StatelessWidget {
  const CommentField({super.key});

  @override
  Widget build(BuildContext context) {
    return TechCard(
      [
        const HeadingText(comments),
        Container(
          margin: const EdgeInsets.all(allMargin - 5),
          child: const InputField(
            hintText: comments,
          ),
        ),
      ],
    );
  }
}
