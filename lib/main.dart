import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Instagram"),
        backgroundColor: Colors.grey,
        actions: [
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
          child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(26),
          border: Border.all(
            width: 3,
            color: Colors.red,
            style: BorderStyle.solid,
          ),
          image: DecorationImage(
            fit: BoxFit.fill,
              image: AssetImage("assets/images/box_bg.jpg")
          ),
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.zero,
        width: 150,
        height: 150,

      )),
    );
  }
}
