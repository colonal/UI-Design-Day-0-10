import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Day1Screen extends StatelessWidget {
  Day1Screen({Key? key}) : super(key: key);
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> imageURL = [
    "https://www.immune-image.eu/wp-content/uploads/2020/01/publications-immune-image.jpg",
    "https://www.companiespalace.com/wp-content/uploads/2021/09/%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%D9%87%D9%88%D9%8A%D8%A9-%D8%A8%D8%B5%D8%B1%D9%8A%D8%A9-%D9%82%D8%B5%D8%B1-%D8%A7%D9%84%D8%B4%D8%B1%D9%83%D8%A7%D8%AA-300x214.jpg",
    "https://5.imimg.com/data5/WZ/NH/HL/SELLER-99655515/clean-code-a-handbook-of-agile-software-craftsmanship-book-250x250.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => scaffoldKey.currentState!.openDrawer(),
          icon: Icon(
            Icons.dehaze_rounded,
            color: Colors.black,
          ),
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: IconButton(
            onPressed: () => scaffoldKey.currentState!.openEndDrawer(),
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: buildTopWidget()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Promo Today",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 200,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: imageURL.length,
                          itemBuilder: (_, index) =>
                              buildImagCard(url: imageURL[index]),
                          separatorBuilder: (_, index) => SizedBox(width: 15),
                        ),
                      ),
                      SizedBox(height: 20),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Container(
                            width: double.infinity,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://wp-mktg.prod.getty1.net/istockcontentredesign/wp-content/uploads/sites/5/2020/06/2021_whatarevectorgraphics_hero.jpg"))),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 15,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "Best Design",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            height: 40,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 50,
                                    color: Colors.black38,
                                    spreadRadius: 30,
                                    offset: Offset(0, -0))
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Card buildImagCard({String? url}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 0.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: 140,
        height: 200,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Image.network(
            url ??
                "https://5.imimg.com/data5/WZ/NH/HL/SELLER-99655515/clean-code-a-handbook-of-agile-software-craftsmanship-book-250x250.jpg",
            fit: BoxFit.fill,
            height: 200,
          ),
          Container(
            width: double.maxFinite,
            height: 20,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 50,
                    spreadRadius: 10,
                    offset: Offset(-10, -20))
              ],
            ),
          )
        ]),
      ),
    );
  }

  Padding buildTopWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Find Your", style: TextStyle(fontSize: 18)),
          SizedBox(height: 5),
          Text(
            "Inspiration",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(height: 20),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade800,
                  ),
                  hintText: "Search youre loocking for"),
            ),
          )
        ],
      ),
    );
  }
}
