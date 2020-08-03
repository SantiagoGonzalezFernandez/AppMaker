//Imports that are not mine
import 'package:app_maker/src/pages/SplashScreen/screens/Animations/fadeAnimation.dart';
import 'package:flutter/material.dart';

//Imports that are mine

class LoginOnePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        'Login',
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
                        'Welcome Back',
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
                                      hintText: 'Email or Phone number',
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
                          delay: 1.5,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.grey
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
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.0,),
                        FadeAnimation(
                          delay: 1.7,
                          child: Text(
                            'Continue with social media',
                            style: TextStyle(
                              color: Colors.grey
                            ),  
                          ),
                        ), 
                        SizedBox(height: 30.0,),
                        Row(
                          children: [
                            Expanded(
                              child: FadeAnimation(
                                delay: 1.8,
                                child: Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Colors.blue
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Facebook',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: FadeAnimation(
                                delay: 1.8,
                                child: Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Colors.black
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Github',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
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
}

//https://www.youtube.com/watch?v=txvyAO894DY