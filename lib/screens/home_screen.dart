import 'package:flutter/material.dart';
import 'package:flutter_basic_training/widgets/scroll_pill.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 252, 241),
      appBar: AppBar(
        backgroundColor: const Color(0xffccd5ae),
        title: const Text("Tut App"),
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Mr Shahzad Farooq",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/sun2.png"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 18, horizontal: 0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ScrollPill(Colors.blue, "Classic"),
                  ScrollPill(Colors.green, "Modern"),
                  ScrollPill(Colors.red, "latest"),
                  ScrollPill(Colors.purple, "Orignal"),
                  ScrollPill(Colors.yellow, "Popular"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
