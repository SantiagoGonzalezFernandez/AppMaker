//Imports that are not mine
import 'package:flutter/material.dart';

//Imports that are mine

class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {

  int _currentIndex = 0;

  final pages = [
    Center(child: Text('OFERTAS')),
    Center(child: Text('TRABAJADORES')),
    Center(child: Text('CHATS')),
    Center(child: Text('PERFIL')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff2AB7CA),
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text('OFERTAS'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text('TRABAJADORES'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('CHATS'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('PERFIL'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}