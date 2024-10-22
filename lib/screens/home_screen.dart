import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_training/widgets/featured_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  PageController _myPageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search Here",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(CupertinoIcons.tuningfork),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            child: PageView(
              controller: _myPageController,
              children: [
                FeaturedCard(),
                FeaturedCard(),
                FeaturedCard(),
                FeaturedCard(),

              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _myPageController,
            count: 4,
            effect: ExpandingDotsEffect(
              dotWidth: 10,
              dotHeight: 10,
              dotColor: Colors.grey,
              activeDotColor: Colors.orange
            ),
          )
        ],
      ),
    );
  }
}
