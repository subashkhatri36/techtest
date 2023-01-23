import 'package:go_router/go_router.dart';
import 'package:techtest/features/Diary/add_diary_page.dart';
import 'package:techtest/features/LandingPage/landing_page.dart';
import 'package:techtest/router/urls.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: initalUrl,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LandingPage(),
    ),
    GoRoute(
      path: addDiaryUrl,
      builder: (context, state) => const AddDiaryPage(),
    ),
  ],
);
