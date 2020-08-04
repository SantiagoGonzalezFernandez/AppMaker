//Imports that are not mine
import 'package:app_maker/src/pages/SplashScreen/screens/Animations/fadeAnimation.dart';
import 'package:flutter/material.dart';

//Imports that are mine

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  
  var _currencies = ['Developer', 'Hospitality', 'Films Maker'];

  String _currentItemSelected;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400],
            ]
          )
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.0,),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                      delay: 1,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    FadeAnimation(
                      delay: 1.3,
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)
                    )
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        SizedBox(height: 60.0,),
                        FadeAnimation(
                          delay: 1.4,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [BoxShadow(
                                color: Color.fromRGBO(255, 95, 27, 0.3),
                                blurRadius: 20.0,
                                offset: Offset(0, 10)
                              )]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey[200]
                                      )
                                    )
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Name',
                                      hintStyle: TextStyle(
                                        color: Colors.grey
                                      ),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey[200]
                                      )
                                    )
                                  ),
                                  child: DropdownButton<String>(
                                    items: _currencies.map((String dropDownStringItem){
                                      return DropdownMenuItem<String>(
                                        value: dropDownStringItem,
                                        child: Text(dropDownStringItem),
                                      );
                                    }).toList(),
                                    onChanged: (String newValueSelected) {
                                      //Your code to execute, when a menu item is selected from drop down
                                      _onDropDownItemSelected(newValueSelected);
                                    },
                                    value: _currentItemSelected,
                                    isExpanded: true,
                                    hint: Text(
                                      'Labor',
                                      style: TextStyle(
                                        color: Colors.grey
                                      ),
                                    ), 
                                    icon: Icon(Icons.arrow_drop_down),
                                    underline: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBDBDBD)
                                      ),
                                    ),
                                  )
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey[200]
                                      )
                                    )
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Email',
                                      hintStyle: TextStyle(
                                        color: Colors.grey
                                      ),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey[200]
                                      )
                                    )
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                        color: Colors.grey
                                      ),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40.0,),
                        FadeAnimation(
                          delay: 1.6,
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.orange[900]
                            ),
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 40.0),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'loginOne'),
                          child: FadeAnimation(
                            delay: 1.5,
                            child: Text(
                              'Already have an account? Login',
                              style: TextStyle(
                                color: Colors.grey
                              ),  
                            ),
                          ),
                        ), 
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void _onDropDownItemSelected(String newValueSelected){
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}