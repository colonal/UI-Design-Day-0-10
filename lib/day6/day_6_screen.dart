import 'package:flutter/material.dart';
import 'package:screen_ui_app/fade_animation/FadeAnimation.dart';

class Day6Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: "Roboto",
          ),
        ),
        toolbarHeight: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 10),
            child: CircleAvatar(
              radius: 30,
              foregroundImage: AssetImage("assets/images/one6.jpg"),
            ),
          ),
        ],
      ),
      body: FadeAnimation(
        child: Container(
          color: Colors.grey[100],
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.blue.withOpacity(0.7),
                            ],
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(25),
                          child: Column(
                            children: [
                              Text(
                                "Steps",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Roboto",
                                ),
                              ),
                              Text(
                                "3 500",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Roboto",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 100,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Colors.pink,
                              Colors.pink.withOpacity(0.7),
                            ],
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(25),
                          child: Column(
                            children: [
                              Text(
                                "Sports",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Roboto",
                                ),
                              ),
                              Text(
                                "25 Min",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Roboto",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50),
                Text(
                  "Health Categories",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 213,
                  child: Card(
                    color: Colors.white,
                    child: Container(
                      width: double.infinity,
                      child: ListView(
                        children: [
                          newMethod(),
                          newMethod(),
                          newMethod(),
                          newMethod(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column newMethod() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 10),
          child: Text(
            "Activity",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
            ),
          ),
        ),
        Divider(
          color: Colors.black,
        )
      ],
    );
  }
}
