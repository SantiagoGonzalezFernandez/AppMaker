//Imports that are not mine
import 'package:app_maker/src/pages/SplashScreen/screens/splash_five.dart';
import 'package:app_maker/src/pages/SplashScreen/screens/splash_four.dart';
import 'package:app_maker/src/pages/SplashScreen/screens/splash_six.dart';
import 'package:app_maker/src/pages/SplashScreen/screens/splash_three.dart';
import 'package:flutter/material.dart';

//Imports that are mine
import 'package:app_maker/src/pages/home_page.dart';
import 'package:app_maker/src/pages/Home/home_screen_page.dart';
import 'package:app_maker/src/pages/Login/login_screen_page.dart';
import 'package:app_maker/src/pages/SplashScreen/splash_screen_page.dart';
import 'package:app_maker/src/pages/SplashScreen/screens/splash_one.dart';
import 'package:app_maker/src/pages/SplashScreen/screens/splash_two.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    //Home
    'home'          : (BuildContext context) => HomePage(),

    //Splash Screen
    'splash'        : (BuildContext context) => SplashScreenPage(),
    'splashOne'     : (BuildContext context) => SplashOnePage(),  
    'splashTwo'     : (BuildContext context) => SplashTwoPage(),  
    'splashThree'   : (BuildContext context) => SplashThreePage(),
    'splashFour'    : (BuildContext context) => SplashFourPage(),
    'splashFive'    : (BuildContext context) => SplashFivePage(),
    'splashSix'     : (BuildContext context) => SplashSixPage(),

    //Login Screen
    'login'         : (BuildContext context) => LoginScreenPage(),

    //Home Screen
    'homeScreen'    : (BuildContext context) => HomeScreenPage(),
  };
}