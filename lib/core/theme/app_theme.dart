import 'package:flutter/material.dart';

ThemeData customLightTheme() {
  TextTheme customLightThemesTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1?.copyWith(
        fontFamily: 'Roboto',
        fontSize: 18.0,
        color: Colors.grey,
      ),
      headline6: base.headline6?.copyWith(fontSize: 15.0, color: Colors.orange),
      headline4: base.headline1?.copyWith(
        fontSize: 22.0,
        color: Colors.grey,
      ),
      headline3: base.headline1?.copyWith(
        fontSize: 18.0,
        color: Colors.grey,
      ),
      caption: base.caption?.copyWith(color: Colors.grey),
      bodyText2: base.bodyText2?.copyWith(color: const Color(0xFF807A6B)),
      bodyText1: base.bodyText1?.copyWith(color: Colors.brown),
    );
  }

  final ThemeData lightTheme = ThemeData.light();
  return lightTheme.copyWith(
    textTheme: customLightThemesTextTheme(lightTheme.textTheme),
    primaryColor: Colors.green,
    indicatorColor: const Color(0xFF807A6B),
    scaffoldBackgroundColor: Colors.white,
    primaryIconTheme: lightTheme.primaryIconTheme.copyWith(
      color: Colors.green,
      size: 16,
    ),
    iconTheme: lightTheme.iconTheme.copyWith(
      color: Colors.grey,
    ),
    backgroundColor: Colors.white,
    tabBarTheme: lightTheme.tabBarTheme.copyWith(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
    ),
    buttonTheme: lightTheme.buttonTheme.copyWith(buttonColor: Colors.green),
    errorColor: Colors.red,
  );
}

ThemeData customDarkTheme() {
  final ThemeData darkTheme = ThemeData.dark();
  return darkTheme.copyWith(
    primaryColor: Colors.black38,
    indicatorColor: const Color(0xFF807A6B),
    primaryIconTheme: darkTheme.primaryIconTheme.copyWith(
      color: Colors.green,
      size: 16,
    ),
  );
}
