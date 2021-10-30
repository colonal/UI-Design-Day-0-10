import 'package:flutter/material.dart';

class Day10Screen extends StatelessWidget {
  final List<String> listItem = [
    'assets/images/two10.jpg',
    'assets/images/three10.jpg',
    'assets/images/four10.jpg',
    'assets/images/five10.jpg',
    'assets/images/one10.jpg',
    'assets/images/two10.jpg',
    'assets/images/three10.jpg',
    'assets/images/four10.jpg',
    'assets/images/five10.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        elevation: .0,
        backgroundColor: Colors.grey[600],
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        title: Text(
          "Home",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Roboto"),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "0",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Roboto",
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 230,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/one10.jpg"),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.4),
                      Colors.black.withOpacity(.2),
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Lifestyle Sale",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: "Roboto",
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        child: MaterialButton(
                          onPressed: () {},
                          height: 50,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Shop Now",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "Roboto",
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: listItem
                    .map((item) => Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(item),
                                    fit: BoxFit.cover)),
                            child: Transform.translate(
                              offset: Offset(50, -50),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 65, vertical: 63),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Icon(
                                  Icons.bookmark_border,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
