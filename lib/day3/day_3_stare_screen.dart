import 'dart:ui';

import 'package:flutter/material.dart';

import 'day_3_home_screen.dart';

class Day3StartScreen extends StatelessWidget {
  const Day3StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/starter-image.jpg"),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.5),
            Colors.black.withOpacity(0.2),
          ])),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Taking Order\nFor Faster\nDelivery",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      fontFamily: "assets/fonts/Roboto"),
                ),
                SizedBox(height: 30),
                Text(
                  "See resturants nearby by\nadding your location",
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18,
                      fontFamily: "assets/fonts/Roboto"),
                ),
                SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              color: Colors.yellowAccent,
                              gradient: LinearGradient(colors: [
                                Colors.yellow,
                                Colors.orange,
                              ]),
                              borderRadius: BorderRadius.circular(10)),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => Day3HomeScreen()));
                            },
                            colorBrightness: Brightness.dark,
                            clipBehavior: Clip.antiAlias,
                            // color: Colors.yellow,
                            child: Text(
                              "Start",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "assets/fonts/Roboto"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Now Deliver To Daor 24/7",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontFamily: "assets/fonts/Roboto"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
