//Imports that are not mine
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

//Imports that are mine

class _MenuOptionsProvider{

  List<dynamic> options = [];

  Future<List<dynamic>> loadData(String dataJson) async{
    final reply = await rootBundle.loadString(dataJson);

    Map dataMap = json.decode(reply);
    options = dataMap['routes'];

    return options;   
  }
}

final menuProvider = new _MenuOptionsProvider();