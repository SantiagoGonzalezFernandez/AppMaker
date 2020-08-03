//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class WidgetPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Widget'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text('Widget Page'),
      )
    );
  }
}