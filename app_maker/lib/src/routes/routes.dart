//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
import 'package:app_maker/src/pages/home_page.dart';
import 'package:app_maker/src/pages/SplashScreen/splash_screen_page.dart';
import 'package:app_maker/src/pages/Home/home_screen_page.dart';
import 'package:app_maker/src/pages/Login/login_screen_page.dart';
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

    //Login Screen
    'login'         : (BuildContext context) => LoginScreenPage(),

    //Home Screen
    'homeScreen'    : (BuildContext context) => HomeScreenPage(),
  };
}