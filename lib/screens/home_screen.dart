import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_training/screens/setting_screen.dart';
import 'package:flutter_basic_training/utils/theme/theme_manager.dart';
import 'package:flutter_basic_training/widgets/featured_card.dart';
import 'package:flutter_basic_training/widgets/popular_movie_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  ThemeManager themeManager;
  HomeScreen({
    super.key,
    required this.themeManager,
  });
  PageController _myPageController = PageController();

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    // Color primary = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SettingScreen(
                    themeController: themeManager,
                  );
                }));
              },
              child: Icon(
                Icons.settings,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
                  activeDotColor: Colors.red),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {
                      print("see all button is clicked");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SettingScreen(
                                themeController: themeManager,
                              )));
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // width: double.infinity,
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  PopularMovieCard(),
                  PopularMovieCard(),
                  PopularMovieCard(),
                  PopularMovieCard(),
                  PopularMovieCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
