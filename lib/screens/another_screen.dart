import 'package:flutter/material.dart';

class AnotherScreen extends StatefulWidget {
  @override
  State<AnotherScreen> createState() {
    return _AnotherScreenState();
  }
}

class _AnotherScreenState extends State<AnotherScreen> {
  int number = 0;

  List<Color> colorList = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.pink,
    Colors.orange,
    Colors.teal,

  ];

  Color bgColor = Colors.red;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Another"),
      ),
      backgroundColor:  colorList.length > number ? colorList[number]: Colors.black,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                number++;
                if(number > colorList.length){
                  number = 0;
                }
                bgColor = Colors.blue;
              });

              print("number is currently ${number}");
            },
            child: Text("Number is currently ${number}")),
      ),
    );
  }
}

// class AnotherScreen extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context){
//     int number = 0;
//     return Scaffold(
//       appBar: AppBar(title: Text("Another"),),
//       backgroundColor: Colors.greenAccent,
//       body: Center(
//         child: ElevatedButton(onPressed: (){
//           number++;
//           print("number ${number}");
//         }, child: Text("Number is ${number}")),
//       ),
//     );
//   }
// }
