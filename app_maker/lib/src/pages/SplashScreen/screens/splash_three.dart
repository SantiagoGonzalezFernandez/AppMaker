//Imports that are not mine
import 'package:app_maker/src/pages/SplashScreen/screens/Animations/fadeAnimation.dart';
import 'package:app_maker/src/pages/SplashScreen/splash_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

//Imports that are mine

class SplashThreePage extends StatefulWidget {

  @override
  _SplashThreePageState createState() => _SplashThreePageState();
}

class _SplashThreePageState extends State<SplashThreePage> with SingleTickerProviderStateMixin{

  AnimationController _scaleController;
  Animation<double>   _scaleAnimation;

  bool hide = false;

  @override
  void initState() {
    super.initState();

    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300)
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 30.0
    ).animate(_scaleController)..addStatusListener((status) {
      if(status == AnimationStatus.completed){
        Navigator.push(
          context, 
          PageTransition(
            child: SplashScreenPage(),
            type: PageTransitionType.fade
          )
        );
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    _scaleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.3),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeAnimation(
                delay: 1,
                child: Text(
                  'Find the best locations near you for a good night',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    height: 1.1
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              FadeAnimation(
                delay: 1.2,
                child: Text(
                  'Let us find you an avent for your interest',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 25,
                    fontWeight: FontWeight.w100
                  ),
                ),
              ),
              SizedBox(height: 150.0),
              FadeAnimation(
                delay: 1.4,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      hide = true;
                    });
                    _scaleController.forward();
                  },
                  child: AnimatedBuilder(
                    animation: _scaleController,
                    builder: (context, child) => Transform.scale(
                      scale: _scaleAnimation.value,
                      child: Container(
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.yellow[700]
                        ),
                        child: hide == false ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Find nearest event',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        ) : Container(),
                      ),
                    ),
                  )
                ),
              ),
              SizedBox(height: 60.0)
            ],
          ),
        ),
      ),
    );
  }
}