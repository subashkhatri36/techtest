import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:techtest/Widgets/tech_page.dart';
import 'package:techtest/router/urls.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TechPage(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: ((context, index) {
          return Card(
            child: Text(index.toString()),
          );
        }),
      ),
      fabButton: FloatingActionButton(
        onPressed: () => context.push(addDiaryUrl),
        child: const Icon(Icons.add),
      ),
    );
  }
}
