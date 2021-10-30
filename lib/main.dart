import 'package:flutter/material.dart';
import 'package:screen_ui_app/day0/day_0_screen.dart';

import 'day1/day_1_screen.dart';
import 'day10/day_10_screen.dart';
import 'day2/day_2_screen.dart';
import 'day3/day_3_stare_screen.dart';
import 'day4/day_4_screen.dart';
import 'day5/day_5_screen.dart';
import 'day6/day_6_stare_screen.dart';
import 'day7/day_7_screen.dart';
import 'day8/day_8_stare_screen.dart';
import 'day9/day_9_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              color: Colors.deepOrange,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Day0Screen()));
              },
              child: Text("DAY 0"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Day1Screen()),
                );
              },
              child: Text("DAY 1"),
              color: Colors.blueGrey,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Day2Screen()),
                );
              },
              child: Text("DAY 2"),
              color: Colors.greenAccent,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Day3StartScreen()),
                );
              },
              child: Text("DAY 3"),
              color: Colors.grey[700],
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Day4Screen()),
                );
              },
              child: Text("DAY 4"),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Day5Screen()),
                );
              },
              child: Text("DAY 5"),
              color: Colors.blueGrey,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Day6StartScreen()),
                );
              },
              child: Text("DAY 6"),
              color: Colors.blueAccent,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Day7Screen()),
                );
              },
              child: Text("DAY 7"),
              color: Colors.grey,
            ),
            MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => Day8StartScreen()),
                  );
                },
                child: Text("DAY 8"),
                color: Colors.orange),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Day9StartScreen()),
                );
              },
              child: Text("DAY 9"),
              color: Colors.blueGrey,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Day10Screen()),
                );
              },
              child: Text("DAY 10"),
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
