//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
import 'package:app_maker/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Maker',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: getApplicationRoutes(),
    );
  }
}