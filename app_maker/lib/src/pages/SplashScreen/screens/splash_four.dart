//Imports that are not mine
import 'dart:async';

import 'package:flutter/material.dart';

//Imports that are mine

class SplashFourPage extends StatefulWidget {

  @override
  _SplashFourPageState createState() => _SplashFourPageState();
}

class _SplashFourPageState extends State<SplashFourPage> {

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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  Color(0xff6094e8),
                  Color(0xffde5cbc),
                ]
              )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 75.0,
                child: Icon(
                  Icons.beach_access,
                  color: Colors.deepOrange,
                  size: 50.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.0
                ),
              ),
              Text(
                'This is a Sample Text',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

//https://www.youtube.com/watch?v=71CYHUrxh88