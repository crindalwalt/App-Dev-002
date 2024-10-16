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
        child: SingleChildScrollView(
          child: Column(
            children: [
              // pills container
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
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(18),
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
              // stack
              Container(
                  height: 140,
                  width: double.infinity,
                  // padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/images/box-1.jpg"),
                        fit: BoxFit.fill),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.black.withOpacity(0.35),
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      Center(
                        child: Text(
                          "Trip to London",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.bookmark,color: Colors.white,),
                              Text("Featured",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              // Container(
              //   // height: 140,
              //   width: double.infinity,
              //   padding: EdgeInsets.all(20),
              //   margin: EdgeInsets.all(20),
              //   decoration: BoxDecoration(
              //     color: Colors.lightGreen[100],
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     children: [
              //       SizedBox(
              //         width: 100,
              //         height: 100,
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: Image(
              //             image: AssetImage("assets/images/box-1.jpg"),
              //             fit: BoxFit.fill,
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(12.0),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Honda Civic",
              //               style: TextStyle(
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "Best For Daily Commute use",
              //               style: TextStyle(
              //                 fontSize: 10,
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(vertical: 10.0),
              //               child: ElevatedButton(
              //                 style: ButtonStyle(
              //                   backgroundColor: MaterialStateProperty.all(
              //                     Colors.lightGreen[300],
              //                   ),
              //                   foregroundColor:
              //                       MaterialStateProperty.all(Colors.black),
              //                   shape: MaterialStateProperty.all(
              //                     RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(
              //                           5), // Rounded corners
              //                     ),
              //                   ),
              //                 ),
              //                 onPressed: () {},
              //                 child: Text("Click to view"),
              //               ),
              //             )
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Container(
              //   // height: 140,
              //   width: double.infinity,
              //   padding: EdgeInsets.all(20),
              //   margin: EdgeInsets.all(20),
              //   decoration: BoxDecoration(
              //     color: Colors.lightGreen[100],
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     children: [
              //       SizedBox(
              //         width: 100,
              //         height: 100,
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: Image(
              //             image: AssetImage("assets/images/box-1.jpg"),
              //             fit: BoxFit.fill,
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(12.0),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Honda Civic",
              //               style: TextStyle(
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "Best For Daily Commute use",
              //               style: TextStyle(
              //                 fontSize: 10,
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(vertical: 10.0),
              //               child: ElevatedButton(
              //                 style: ButtonStyle(
              //                   backgroundColor: MaterialStateProperty.all(
              //                     Colors.lightGreen[300],
              //                   ),
              //                   foregroundColor:
              //                       MaterialStateProperty.all(Colors.black),
              //                   shape: MaterialStateProperty.all(
              //                     RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(
              //                           5), // Rounded corners
              //                     ),
              //                   ),
              //                 ),
              //                 onPressed: () {},
              //                 child: Text("Click to view"),
              //               ),
              //             )
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Container(
              //   // height: 140,
              //   width: double.infinity,
              //   padding: EdgeInsets.all(20),
              //   margin: EdgeInsets.all(20),
              //   decoration: BoxDecoration(
              //     color: Colors.lightGreen[100],
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     children: [
              //       SizedBox(
              //         width: 100,
              //         height: 100,
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: Image(
              //             image: AssetImage("assets/images/box-1.jpg"),
              //             fit: BoxFit.fill,
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(12.0),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Honda Civic",
              //               style: TextStyle(
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "Best For Daily Commute use",
              //               style: TextStyle(
              //                 fontSize: 10,
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(vertical: 10.0),
              //               child: ElevatedButton(
              //                 style: ButtonStyle(
              //                   backgroundColor: MaterialStateProperty.all(
              //                     Colors.lightGreen[300],
              //                   ),
              //                   foregroundColor:
              //                       MaterialStateProperty.all(Colors.black),
              //                   shape: MaterialStateProperty.all(
              //                     RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(
              //                           5), // Rounded corners
              //                     ),
              //                   ),
              //                 ),
              //                 onPressed: () {},
              //                 child: Text("Click to view"),
              //               ),
              //             )
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Container(
              //   // height: 140,
              //   width: double.infinity,
              //   padding: EdgeInsets.all(20),
              //   margin: EdgeInsets.all(20),
              //   decoration: BoxDecoration(
              //     color: Colors.lightGreen[100],
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     children: [
              //       SizedBox(
              //         width: 100,
              //         height: 100,
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: Image(
              //             image: AssetImage("assets/images/box-1.jpg"),
              //             fit: BoxFit.fill,
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(12.0),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Honda Civic",
              //               style: TextStyle(
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "Best For Daily Commute use",
              //               style: TextStyle(
              //                 fontSize: 10,
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(vertical: 10.0),
              //               child: ElevatedButton(
              //                 style: ButtonStyle(
              //                   backgroundColor: MaterialStateProperty.all(
              //                     Colors.lightGreen[300],
              //                   ),
              //                   foregroundColor:
              //                       MaterialStateProperty.all(Colors.black),
              //                   shape: MaterialStateProperty.all(
              //                     RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(
              //                           5), // Rounded corners
              //                     ),
              //                   ),
              //                 ),
              //                 onPressed: () {},
              //                 child: Text("Click to view"),
              //               ),
              //             )
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Container(
              //   // height: 140,
              //   width: double.infinity,
              //   padding: EdgeInsets.all(20),
              //   margin: EdgeInsets.all(20),
              //   decoration: BoxDecoration(
              //     color: Colors.lightGreen[100],
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     children: [
              //       SizedBox(
              //         width: 100,
              //         height: 100,
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: Image(
              //             image: AssetImage("assets/images/box-1.jpg"),
              //             fit: BoxFit.fill,
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(12.0),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Honda Civic",
              //               style: TextStyle(
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "Best For Daily Commute use",
              //               style: TextStyle(
              //                 fontSize: 10,
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(vertical: 10.0),
              //               child: ElevatedButton(
              //                 style: ButtonStyle(
              //                   backgroundColor: MaterialStateProperty.all(
              //                     Colors.lightGreen[300],
              //                   ),
              //                   foregroundColor:
              //                       MaterialStateProperty.all(Colors.black),
              //                   shape: MaterialStateProperty.all(
              //                     RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(
              //                           5), // Rounded corners
              //                     ),
              //                   ),
              //                 ),
              //                 onPressed: () {},
              //                 child: Text("Click to view"),
              //               ),
              //             )
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Container(
              //   // height: 140,
              //   width: double.infinity,
              //   padding: EdgeInsets.all(20),
              //   margin: EdgeInsets.all(20),
              //   decoration: BoxDecoration(
              //     color: Colors.lightGreen[100],
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     children: [
              //       SizedBox(
              //         width: 100,
              //         height: 100,
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: Image(
              //             image: AssetImage("assets/images/box-1.jpg"),
              //             fit: BoxFit.fill,
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(12.0),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Honda Civic",
              //               style: TextStyle(
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "Best For Daily Commute use",
              //               style: TextStyle(
              //                 fontSize: 10,
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(vertical: 10.0),
              //               child: ElevatedButton(
              //                 style: ButtonStyle(
              //                   backgroundColor: MaterialStateProperty.all(
              //                     Colors.lightGreen[300],
              //                   ),
              //                   foregroundColor:
              //                       MaterialStateProperty.all(Colors.black),
              //                   shape: MaterialStateProperty.all(
              //                     RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(
              //                           5), // Rounded corners
              //                     ),
              //                   ),
              //                 ),
              //                 onPressed: () {},
              //                 child: Text("Click to view"),
              //               ),
              //             )
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Container(
              //   // height: 140,
              //   width: double.infinity,
              //   padding: EdgeInsets.all(20),
              //   margin: EdgeInsets.all(20),
              //   decoration: BoxDecoration(
              //     color: Colors.lightGreen[100],
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     children: [
              //       SizedBox(
              //         width: 100,
              //         height: 100,
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: Image(
              //             image: AssetImage("assets/images/box-1.jpg"),
              //             fit: BoxFit.fill,
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(12.0),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Honda Civic",
              //               style: TextStyle(
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "Best For Daily Commute use",
              //               style: TextStyle(
              //                 fontSize: 10,
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(vertical: 10.0),
              //               child: ElevatedButton(
              //                 style: ButtonStyle(
              //                   backgroundColor: MaterialStateProperty.all(
              //                     Colors.lightGreen[300],
              //                   ),
              //                   foregroundColor:
              //                       MaterialStateProperty.all(Colors.black),
              //                   shape: MaterialStateProperty.all(
              //                     RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(
              //                           5), // Rounded corners
              //                     ),
              //                   ),
              //                 ),
              //                 onPressed: () {},
              //                 child: Text("Click to view"),
              //               ),
              //             )
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Container(
              //   // height: 140,
              //   width: double.infinity,
              //   padding: EdgeInsets.all(20),
              //   margin: EdgeInsets.all(20),
              //   decoration: BoxDecoration(
              //     color: Colors.lightGreen[100],
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     children: [
              //       SizedBox(
              //         width: 100,
              //         height: 100,
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(10),
              //           child: Image(
              //             image: AssetImage("assets/images/box-1.jpg"),
              //             fit: BoxFit.fill,
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(12.0),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Honda Civic",
              //               style: TextStyle(
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "Best For Daily Commute use",
              //               style: TextStyle(
              //                 fontSize: 10,
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(vertical: 10.0),
              //               child: ElevatedButton(
              //                 style: ButtonStyle(
              //                   backgroundColor: MaterialStateProperty.all(
              //                     Colors.lightGreen[300],
              //                   ),
              //                   foregroundColor:
              //                       MaterialStateProperty.all(Colors.black),
              //                   shape: MaterialStateProperty.all(
              //                     RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(
              //                           5), // Rounded corners
              //                     ),
              //                   ),
              //                 ),
              //                 onPressed: () {},
              //                 child: Text("Click to view"),
              //               ),
              //             )
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
