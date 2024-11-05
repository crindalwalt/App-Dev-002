import 'package:flutter/material.dart';

class FeaturedCard extends StatefulWidget {
  @override
  State<FeaturedCard> createState() {
    return _FeaturedCardState();
  }
}

class _FeaturedCardState extends State<FeaturedCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          width: double.infinity,
          height: 150,
          decoration:  BoxDecoration(

            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
          ),
          child: Stack(
            children: [
              ClipRRect(

                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: NetworkImage("https://picsum.photos/400/200"),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.blue.withOpacity(.8),
                    Colors.blue.withOpacity(.8),
                    Colors.transparent,
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Batman ",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("New Movie",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Click me"),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
