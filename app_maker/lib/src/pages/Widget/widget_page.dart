//Imports that are not mine
import 'package:app_maker/src/widgets/list_items_widget.dart';
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
      body: list('data/menu_options_widget.json')
    );
  }
}