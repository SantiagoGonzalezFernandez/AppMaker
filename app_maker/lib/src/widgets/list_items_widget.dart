//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine
import 'package:app_maker/src/utils/icon_string_util.dart';
import 'package:app_maker/src/providers/menu_options_provider.dart';

Widget list(String dataJson) {
  return FutureBuilder(
    future: menuProvider.loadData(dataJson),
    initialData: [],
    builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
      return ListView(
        children: listItems(snapshot.data, context),
      );
    },
  );
}

List<Widget> listItems(List<dynamic> data, BuildContext context) {
    
    final List<Widget> options = [];

    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['text']),
        leading: getIcon(
          iconName: element['icon'],
          color: Colors.pink
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.pink,
        ),
        onTap: (){
          Navigator.pushNamed(context, element['route']);
        },
      );

      options..add(widgetTemp)
             ..add(Divider());

    });

    return options;
  }