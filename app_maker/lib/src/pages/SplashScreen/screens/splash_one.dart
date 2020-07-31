//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

//Imports that are mine
import 'package:app_maker/src/pages/SplashScreen/splash_screen_page.dart';

class SplashOnePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      backgroundColor: Colors.black,
      image: Image.asset('assets/images/loading.gif'),
      loaderColor: Colors.white,
      photoSize: 150.0,
      navigateAfterSeconds: SplashScreenPage(),
    );
  }
}

//https://www.youtube.com/watch?v=QnglGHffUIo