import 'package:flutter/material.dart';
import 'package:screen_ui_app/fade_animation/FadeAnimation.dart';

class Day4Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 500,
                    color: Colors.black,
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/emma.jpg"),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.black.withOpacity(0.5),
                              Colors.black.withOpacity(0.2),
                            ])),
                        child: Container(
                          padding: EdgeInsets.only(left: 30, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Emma Watson",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Roboto"),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    "60 Videos",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                  SizedBox(width: 50),
                                  Text(
                                    "240K Subscribers",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School.",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "Roboto"),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Bom",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto"),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "April, 15th 1990, Paris, France",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontFamily: "Roboto"),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Nationality",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto"),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "British",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontFamily: "Roboto"),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Videos",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto"),
                        ),
                        Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              buildVideosItme(
                                  image: "assets/images/emma-1.jpg"),
                              buildVideosItme(
                                  image: "assets/images/emma-2.jpg"),
                              buildVideosItme(
                                  image: "assets/images/emma-3.jpg"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        )
                      ],
                    ),
                  ),

                  // 1111111111111111
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FadeAnimation(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow[700]),
                  child: Align(
                      child: Text(
                    "Follow",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildVideosItme({required String image}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            )),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.2),
            ],
          )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.play_arrow,
                size: 80,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
