import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

class Day5Screen extends StatelessWidget {
  const Day5Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://github.com/afgprogrammer/Flutter-ripple-map-application/blob/master/assets/images/background.jpg?raw=true"),
              ),
            ),
            child: Column(
              children: [
                Spacer(),
                Container(
                  height: 210,
                  width: double.maxFinite,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildWidget(image: "assets/images/place.jpg"),
                      buildWidget(image: "assets/images/place2.jpg"),
                      buildWidget(image: "assets/images/place3.jpg"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          makePoint(top: 140.0, left: 40.0),
          makePoint(top: 190.0, left: 190.0),
          makePoint(top: 219.0, left: 60.0),
        ],
      ),
    );
  }

  Positioned makePoint({required double left, required double top}) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: Colors.blueAccent.withOpacity(0.3),
            borderRadius: BorderRadius.circular(50)),
        child: Animator<double>(
          duration: Duration(seconds: 1),
          tween: Tween<double>(begin: 4.0, end: 6.0),
          cycles: 0,
          builder: (_, anim, x) => Container(
            width: 18,
            height: 18,
            margin: EdgeInsets.all(anim.value),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }

  Padding buildWidget({required String image}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(image),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "2.1 mi",
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Golde Gate Bridge",
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star_border_outlined,
                      color: Colors.orange,
                      size: 35,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
