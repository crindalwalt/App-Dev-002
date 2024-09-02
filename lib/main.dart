import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          "Nutri addso",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "I have created my first app",
              style: TextStyle(fontSize: 30.00),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Click here"),
            ),
          ],
        ),
      ),
    );
  }
}
