import 'package:flutter/material.dart';
import 'package:flutter_basic_training/screens/another_screen.dart';
import 'package:flutter_basic_training/screens/home_screen.dart';

class TutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnotherScreen(),
    );
  }
}
