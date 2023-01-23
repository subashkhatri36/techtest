import 'package:flutter/material.dart';
import 'package:techtest/core/dimension.dart';

class TechCard extends StatelessWidget {
  const TechCard(this.children, {Key? key}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: verticalMargin),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: paddingHorizontal, vertical: paddingVertical),
          child: Column(children: children),
        ),
      ),
    );
  }
}
