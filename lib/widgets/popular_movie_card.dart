import 'package:flutter/material.dart';

class PopularMovieCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: NetworkImage("https://picsum.photos/150/200"),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Batman",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            "Wasim Favourite",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
