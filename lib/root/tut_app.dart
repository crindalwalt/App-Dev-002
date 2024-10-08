import 'package:flutter/material.dart';
import 'package:flutter_basic_training/widgets/home_screen.dart';

class TutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
