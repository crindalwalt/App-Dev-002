import 'package:flutter/material.dart';

class ScrollPill extends StatelessWidget {
  Color pillColor;
  String text;
// constructor
  ScrollPill(this.pillColor, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: pillColor,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
