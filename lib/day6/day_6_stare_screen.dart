import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:screen_ui_app/fade_animation/FadeAnimation.dart';

import 'day_6_screen.dart';

class Day6StartScreen extends StatefulWidget {
  @override
  _Day6StartScreenState createState() => _Day6StartScreenState();
}

class _Day6StartScreenState extends State<Day6StartScreen>
    with TickerProviderStateMixin {
  double paddingAnimation = 0;
  late PageController _pageController;

  AnimationController? rippleController;
  AnimationController? scaleController;

  Animation<double>? rippleAnimation;
  Animation<double>? scaleAnimation;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    rippleController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    scaleController =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              rippleController!.reverse();
              scaleController!.reverse();
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: Day6Screen()));
            }
          });

    rippleAnimation =
        Tween<double>(begin: 80.0, end: 90.0).animate(rippleController!)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              rippleController!.reverse();
            } else if (status == AnimationStatus.dismissed) {
              rippleController!.forward();
            }
          });

    scaleAnimation =
        Tween<double>(begin: 1.0, end: 30.0).animate(scaleController!);

    rippleController!.forward();
  }

  @override
  void dispose() {
    print("object");
    rippleController!.reverse();
    scaleController!.reverse();
    _pageController.dispose();
    rippleController!.dispose();
    scaleController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage("assets/images/one6.jpg"),
          makePage("assets/images/two6.jpg"),
          makePage("assets/images/three6.jpg"),
        ],
      ),
    );
  }

  Container makePage(image) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.5),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child: Container(
          // width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "Exerciese 1",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto"),
              ),
              SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "15",
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto"),
                  ),
                  Text(
                    "Minutes",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: "Roboto"),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "3",
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto"),
                  ),
                  Text(
                    "Exerciese",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: "Roboto"),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Start ths morning\nwith your health",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: "Roboto"),
                        ),
                        SizedBox(height: 15),
                        if (1 == 2)
                          AnimatedOpacity(
                            opacity: 1,
                            duration: Duration(seconds: 2),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.blue.withOpacity(0.3),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.blue,
                              ),
                            ),
                          ),
                        Container(
                          height: 100,
                          child: FadeAnimation(
                              child: Align(
                            alignment: Alignment.bottomCenter,
                            child: AnimatedBuilder(
                              animation: rippleAnimation!,
                              builder: (context, child) => Container(
                                width: rippleAnimation!.value,
                                height: rippleAnimation!.value,
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white.withOpacity(.4)),
                                  child: InkWell(
                                    onTap: () {
                                      scaleController!.forward();
                                    },
                                    child: AnimatedBuilder(
                                      animation: scaleAnimation!,
                                      builder: (context, child) =>
                                          Transform.scale(
                                        scale: scaleAnimation!.value,
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
