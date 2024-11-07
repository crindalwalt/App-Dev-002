import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier {
  ThemeMode _mode = ThemeMode.light;
  ThemeMode get themeMode => _mode;

  void turnDarkModeOn(bool isDark) {
    _mode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
