//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class LoginScreenPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}