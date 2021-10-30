import 'package:flutter/material.dart';
import 'package:screen_ui_app/fade_animation/FadeAnimation.dart';

import 'day_9_screen.dart';

class Day9StartScreen extends StatefulWidget {
  @override
  _Day9StartScreenState createState() => _Day9StartScreenState();
}

class _Day9StartScreenState extends State<Day9StartScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background9.jpg"),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.3),
            ]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FadeAnimation(
                  child: Text(
                    "Find the best locations near you for a good night.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto"),
                  ),
                ),
                SizedBox(height: 20),
                FadeAnimation(
                  child: Text(
                    "Let us find you an event for your interest",
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                        fontFamily: "Roboto"),
                  ),
                ),
                SizedBox(height: 90),
                FadeAnimation(
                  child: Center(
                    child: MaterialButton(
                      height: 55,
                      color: Colors.orange[400],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => Day9Screen()));
                      },
                      child: Row(
                        children: [
                          Text(
                            "Find nearest event",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Roboto"),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
