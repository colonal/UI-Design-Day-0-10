import 'package:flutter/material.dart';
import 'package:screen_ui_app/fade_animation/FadeAnimation.dart';
import 'package:show_up_animation/show_up_animation.dart';

class Day3HomeScreen extends StatefulWidget {
  @override
  _Day3HomeScreenState createState() => _Day3HomeScreenState();
}

class _Day3HomeScreenState extends State<Day3HomeScreen> {
  final List typeFood = [
    {"isActive": true, "title": 'Pizaa'},
    {"isActive": false, "title": 'Burgers'},
    {"isActive": false, "title": 'Kebab'},
    {"isActive": false, "title": 'Desert'},
    {"isActive": false, "title": 'Salad'},
  ];
  int indexActive = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_basket_outlined,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Food Delivery",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontFamily: "assets/fonts/Roboto"),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 1),
                child: ListView.builder(
                  itemBuilder: (_, index) => makeCategory(
                      isActive: typeFood[index]["isActive"],
                      title: typeFood[index]["title"],
                      onPressed: () {
                        typeFood[indexActive]["isActive"] = false;
                        indexActive = index;
                        typeFood[index]["isActive"] = true;
                        setState(() {});
                      }),
                  itemCount: typeFood.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Free delivery",
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "assets/fonts/Roboto"),
              ),
              SizedBox(height: 20),
              Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem(image: 'assets/images/one2.jpg'),
                  makeItem(image: 'assets/images/two2.jpg'),
                  makeItem(image: 'assets/images/three2.jpg'),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({required String image}) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: FadeAnimation(
        direction: Direction.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: [
              Container(
                height: 400,
                // width: 280,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomCenter, colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.2),
                    ]),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "\$ 13.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "assets/fonts/Roboto"),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Vegetarian Pizza",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "assets/fonts/Roboto"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeCategory(
    {required void Function()? onPressed,
    bool isActive = false,
    String title = ""}) {
  return FadeAnimation(
    child: Container(
      width: 130,
      height: 50,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: isActive ? Colors.orange : Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        height: 50,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(color: isActive ? Colors.white : Colors.grey),
        ),
      ),
    ),
  );
}
