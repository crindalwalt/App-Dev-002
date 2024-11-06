import 'package:flutter/material.dart';
import 'package:flutter_basic_training/screens/home_screen.dart';
import 'package:flutter_basic_training/screens/login_screen.dart';
import 'package:flutter_basic_training/utils/theme/my_themes.dart';
import 'package:flutter_basic_training/utils/theme/theme_manager.dart';

void main() {
  runApp(MovishApp());
}

// Root App
class MovishApp extends StatelessWidget {
  MyThemes myCustomThemes = MyThemes();
  ThemeManager themeManager = ThemeManager();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myCustomThemes.myLightTheme,
      darkTheme: myCustomThemes.myDarkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
