

import 'package:flutter/material.dart';

class ThemeProvider {
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Color(0xAAa3a380),

    scaffoldBackgroundColor: Colors.white54,
    appBarTheme: AppBarTheme(
      color: Colors.blue,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
      ),
    ),
    // textTheme: TextTheme(
    //   headlineLarge: TextStyle(
    //     fontSize: 30,
    //     fontWeight: FontWeight.bold,
    //   ),
    // ),
  );

  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
  );
}