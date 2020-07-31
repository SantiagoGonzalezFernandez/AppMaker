//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
import 'package:app_maker/src/widgets/list_items_widget.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('App Maker'),
        backgroundColor: Colors.pink,
      ),
      body: list('data/menu_options_home.json')
    );
  }

  

  
}