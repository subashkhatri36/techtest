import 'package:flutter/material.dart';

class HorizontalSize extends StatelessWidget {
  const HorizontalSize({super.key, this.width = 10.0});
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
