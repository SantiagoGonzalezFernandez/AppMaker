//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

final _icons = <String, IconData>{

  //Home
  'slideshow'     : Icons.slideshow,
  'account_box'   : Icons.account_box,
  'phone_iphone'  : Icons.phone_iphone, 

  //SplashScreen
  'filter_1' : Icons.filter_1,
  'filter_2' : Icons.filter_2,
  
};

Icon getIcon({@required String iconName, Color color}){

  return Icon(
    _icons[iconName],
    color: color,
  );

}