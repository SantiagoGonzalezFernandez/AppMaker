//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

final _icons = <String, IconData>{

  //Home
  'slideshow'     : Icons.slideshow,
  'account_box'   : Icons.account_box,
  'phone_iphone'  : Icons.phone_iphone, 
  'widgets'  : Icons.widgets, 

  //SplashScreen
  'filter_1' : Icons.filter_1,
  'filter_2' : Icons.filter_2,
  'filter_3' : Icons.filter_3,
  'filter_4' : Icons.filter_4,
  'filter_5' : Icons.filter_5,
  'filter_6' : Icons.filter_6,

  //Onboarding
  'theaters' : Icons.theaters,
  
};

Icon getIcon({@required String iconName, Color color}){

  return Icon(
    _icons[iconName],
    color: color,
  );

}