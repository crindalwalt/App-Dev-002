import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  String content = "Shahzad Farooq";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          "Nutri addso",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 97, 150, 0),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          width: 200,
          // height: 100,
          child: Text(
            content,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: HomeScreen(),
//   ));
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.teal,
//       appBar: AppBar(
//         leading: Icon(Icons.home),
//         title: Text("Instagram"),
//         backgroundColor: Colors.grey,
//         actions: [
//           Icon(Icons.search),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Icon(Icons.add),
//           ),
//         ],
//       ),
//       body: Center(
//           child: Container(
//         decoration: BoxDecoration(
//           color: Colors.green,
//           borderRadius: BorderRadius.circular(26),
//           border: Border.all(
//             width: 3,
//             color: Colors.red,
//             style: BorderStyle.solid,
//           ),
//           image: DecorationImage(
//               fit: BoxFit.fill, image: AssetImage("assets/images/box_bg.jpg")),
//         ),
//         padding: EdgeInsets.all(10),
//         margin: EdgeInsets.zero,
//         width: 150,
//         height: 150,
//       )),
//     );
//   }
// }
