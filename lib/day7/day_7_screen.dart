import 'package:flutter/material.dart';
import 'package:screen_ui_app/day7/buttonAnimation.dart';

class Day7Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonAnimation(
                  primaryColor: Color.fromRGBO(57, 92, 249, 1),
                  darkPrimaryColor: Color.fromRGBO(44, 78, 233, 1)),
              SizedBox(
                height: 20,
              ),
              ButtonAnimation(
                  primaryColor: Colors.yellow[700],
                  darkPrimaryColor: Colors.yellow[800]),
              SizedBox(
                height: 20,
              ),
              ButtonAnimation(
                  primaryColor: Colors.green[400],
                  darkPrimaryColor: Colors.green[600]),
              SizedBox(
                height: 20,
              ),
              ButtonAnimation(
                  primaryColor: Colors.red[700],
                  darkPrimaryColor: Colors.red[800]),
            ],
          ),
        ),
      ),
    );
  }
}
