import 'package:flutter/material.dart';
import 'package:techtest/utils/strings.dart';

class TechPage extends StatefulWidget {
  const TechPage({super.key, this.appBar, this.body, this.fabButton});
  final Widget? body;
  final AppBar? appBar;
  final Widget? fabButton;

  @override
  State<TechPage> createState() => _TechPageState();
}

class _TechPageState extends State<TechPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: widget.appBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: widget.body ??
            Container(
              width: size.width,
              height: size.height,
              alignment: Alignment.center,
              child: const Text(noItemFound),
            ),
      ),
      floatingActionButton: widget.fabButton,
    );
  }
}
