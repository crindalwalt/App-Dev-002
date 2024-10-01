import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: EntryPoint(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class EntryPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget page = Scaffold(

    // );
    // return page;

    Color primaryColor = Colors.green;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 163, 164, 165),
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text("My School"),
        backgroundColor: primaryColor,
        centerTitle: true,
        actions: const [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: const Center(
        child: Text("Hy There"),
      ),
      floatingActionButton: Container(
        width: 130,
        height: 50,
        decoration: BoxDecoration(
          // color: primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              print("Button is clicked");
            },
            child: Text("Welcome ME"),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        elevation: 2,
        currentIndex: 0,
        mouseCursor: MouseCursor.defer,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: primaryColor,
            // tooltip: "Home Page",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_add), label: "Library"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
