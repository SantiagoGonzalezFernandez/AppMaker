//Imports that are not mine
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

//Imports that are mine

class SplashSixPage extends StatefulWidget {
  @override
  _SplashSixPageState createState() => _SplashSixPageState();
}

class _SplashSixPageState extends State<SplashSixPage> {

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
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/images/bg.png',
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ),
            Shimmer.fromColors(
              baseColor: Color(0xff7F00FF),
              highlightColor: Color(0xffE100FF),
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Santy',
                  style: TextStyle(
                    fontSize: 90.0,
                    fontFamily: 'Pacifico',
                    shadows: <Shadow>[
                      Shadow(
                        blurRadius: 18.0,
                        color: Colors.black87,
                        offset: Offset.fromDirection(120, 12)
                      )
                    ]
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}