import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gennews/views/Home.dart';

void main() {
  runApp(MyApp());
}

// bool _iconBool = false;

// ThemeData _lightTheme = ThemeData(
//     brightness: Brightness.light

// );

// ThemeData _darkTheme = ThemeData(
//     brightness: Brightness.dark

// );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Tak',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blue[900]),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.cyclone_rounded,
                          color: Colors.black,
                          size: 70.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "NEWS-TAK",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      backgroundColor: Colors.white,
                      strokeWidth: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
