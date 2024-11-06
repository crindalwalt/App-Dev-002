import 'package:flutter/material.dart';

class MyThemes {
  static Color primary = Color(0xFF5D9CEC);
  static Color background = Color(0xFFFFFFFF);
  ThemeData myLightTheme = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: background,
      primaryColor: primary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.blue),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(),
            )),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: primary,
      ));

  ThemeData myDarkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.red,
  );
}
