import 'package:asset_cache/asset_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:screen_ui_app/fade_animation/FadeAnimation.dart';

class Day2Screen extends StatelessWidget {
  final int totalPage = 4;
  final imageAssets = ImageAssetCache(basePath: 'assets/images/');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          buildPageWidget(
              page: 1,
              image: 'assets/images/one.jpg',
              title: 'Yosemite National Park',
              description:
                  'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.'),
          buildPageWidget(
              page: 2,
              image: 'assets/images/two.jpg',
              title: 'Golden Gate Bridge',
              description:
                  'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.'),
          buildPageWidget(
              page: 3,
              image: 'assets/images/three.jpg',
              title: 'Sedona',
              description:
                  "Sedona is regularly described as one of America's most beautiful places. Nowhere else will you find a landscape as dramatically colorful."),
          buildPageWidget(
              page: 4,
              image: 'assets/images/four.jpg',
              title: 'Savannah',
              description:
                  "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak."),
        ],
      ),
    );
  }

  Stack buildPageWidget({image, title, description, page}) {
    return Stack(alignment: Alignment.centerLeft, children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image ?? "assets/images/one.jpg"),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.1, 0.9],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 40),
        child: Container(
          width: double.infinity,
          color: Colors.black.withOpacity(0.1),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: FadeAnimation(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title ?? "Yosemite\nNational Park",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    RatingBarIndicator(
                      rating: 2.75,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                      direction: Axis.horizontal,
                      unratedColor: Colors.grey,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "4.0(2300)",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Text(
                    description ??
                        "Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "READ MORE",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
          top: 10,
          right: 10,
          child: SafeArea(
            child: FadeAnimation(
              child: Row(
                children: [
                  Text(
                    page.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/' + totalPage.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
            ),
          ))
    ]);
  }
}
