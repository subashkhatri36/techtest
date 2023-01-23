import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techtest/core/theme/app_theme.dart';
import 'package:techtest/features/Diary/bloc/diary_bloc.dart';
import 'package:techtest/features/Diary/bloc/diary_state.dart';
import 'package:techtest/router/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddDiaryBloc>(
          create: (BuildContext context) => AddDiaryBloc(DiaryState()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        darkTheme: customDarkTheme(),
        theme: customLightTheme(),
        themeMode: ThemeMode.system,
      ),
    );
  }
}
