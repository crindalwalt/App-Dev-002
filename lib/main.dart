import 'package:flutter/material.dart';
import 'package:flutter_basic_training/screens/home_screen.dart';
import 'package:flutter_basic_training/screens/login_screen.dart';

void main() {
  runApp(MovishApp());
}
// Root App
class MovishApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
