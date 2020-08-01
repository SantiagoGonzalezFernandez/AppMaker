//Imports that are not mine
import 'dart:async';

import 'package:flutter/material.dart';

//Imports that are mine

class SplashFivePage extends StatefulWidget {
  @override
  _SplashFivePageState createState() => _SplashFivePageState();
}

class _SplashFivePageState extends State<SplashFivePage> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), 
      () => Navigator.pushNamed(context, 'splash')
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Splash\nScreen',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontFamily: "Cursive"
                ),
              )
            ],
          )
        ],
      )
    );
  }
}