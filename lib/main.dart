import 'package:flutter/material.dart';
import 'package:flutter_basic_training/screens/home_screen.dart';
import 'package:flutter_basic_training/screens/login_screen.dart';
import 'package:flutter_basic_training/utils/theme/theme_provider.dart';

void main() {
  runApp(MovishApp());
}
// Root App
class MovishApp extends StatelessWidget {
  ThemeProvider myThemes = ThemeProvider();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myThemes.lightTheme ,
      darkTheme: myThemes.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
