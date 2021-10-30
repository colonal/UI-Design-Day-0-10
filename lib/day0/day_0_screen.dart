import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:screen_ui_app/day0/data.dart';

class Day0Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List data = DataAmazon.data;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildTopWidgt(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(8),
                  height: 800,
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [for (var item in data) buildItem1(item)],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column buildTopWidgt() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          // height: 200,
          color: Colors.cyan[400],
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
              Container(
                child: Flexible(
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        blurRadius: 50,
                        offset: Offset(0, 0),
                        spreadRadius: 0.5,
                        color: Colors.black26,
                      )
                    ]),
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.camera_alt),
                            Icon(Icons.microwave)
                          ],
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.cyan.withOpacity(0.1),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Row(
            children: [
              Icon(
                Icons.location_history,
              ),
              Text(
                "Deliver to Daniele - Rome 00100",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("Primer"),
                  Switch(value: false, onChanged: (_) {})
                ],
              ),
              DropdownButton(items: [], hint: Text("Filters"))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "RESULTS",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container buildItem1(List<dynamic> data) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Expanded(child: Image.network(data[0])),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data[1],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Expanded(
                        child: Text(
                          data[3][1],
                          style: TextStyle(
                              // fontSize: 16,
                              ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    child: Text(
                      "Limited time doal",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      data[2],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Get it Friday, Sep 3",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
