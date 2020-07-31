//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class HomeScreenPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}