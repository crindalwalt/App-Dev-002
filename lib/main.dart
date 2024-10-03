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
    String greeting = "Hola Amigo";
    Widget puranaColumn = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(greeting),
        const Icon(Icons.home),
        const Image(
          height: 300,
          // image: NetworkImage("https://picsum.photos/200/200"),
          image: AssetImage("assets/images/box_bg.jpg"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Icon(Icons.search),
        ),
      ],
    );
    Color primaryColor = const Color.fromARGB(255, 211, 179, 39);
    Widget containerx = Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(20)),
      width: double.infinity,
      child: Text(
        "Card 1",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );

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
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 161, 228, 165),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.home,
                color: Colors.blue,
              ),
              Text("Click Now"),
              // Image.network("https://picsum.photos/200/200")
              IconButton(onPressed: () {}, icon: Icon(Icons.search))
            ],
          ),
        ),
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
