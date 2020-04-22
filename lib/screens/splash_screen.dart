import 'dart:async';

import 'package:eliminate_grass_project/screens/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {

  static String id = 'splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }
  
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => MainScreen(),
      )
    ); 
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.warning),
                    SizedBox(height: 10,),
                    Text(
                      'Eliminate Grass Project',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.title,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'This app was brought to you by the anti-grass gang',
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}