import 'package:flutter/material.dart';
import 'package:screen_ui_app/fade_animation/FadeAnimation.dart';

class Day9Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        actions: [
          Container(
            padding: const EdgeInsets.only(top: 8, right: 8),
            child: Stack(
              clipBehavior: Clip.hardEdge,
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: 60,
                  width: 45,
                  margin: EdgeInsets.only(top: 4, left: 4),
                  child: Container(
                    height: 50,
                    width: 45,
                    // padding: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/one9.jpg"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.menu, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Serch Event",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 25,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none)),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                buildMethod(image: 'assets/images/one9.jpg', date: 17),
                buildMethod(image: 'assets/images/two9.jpg', date: 18),
                buildMethod(image: 'assets/images/three9.jpg', date: 19),
                buildMethod(image: 'assets/images/four9.jpg', date: 20),
                buildMethod(image: 'assets/images/five9.jpg', date: 21),
              ],
            )
          ],
        ),
      ),
    );
  }

  FadeAnimation buildMethod({String? image, int? date}) {
    return FadeAnimation(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  date!.toString(),
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: "Roboto",
                  ),
                ),
                Text(
                  "SEP",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: "Roboto",
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAlias,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image ?? "assets/images/one9.jpg",
                    ),
                  ),
                ),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.2),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20, left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Bumbershoot 2019",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            fontFamily: "Roboto",
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.grey[100],
                            ),
                            SizedBox(width: 10),
                            Text(
                              "19:00 PM",
                              style: TextStyle(
                                color: Colors.grey[100],
                                fontSize: 18,
                                fontFamily: "Roboto",
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
