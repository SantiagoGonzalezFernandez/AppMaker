//Imports that are not mine
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Imports that are mine

class OnboardingOnePage extends StatefulWidget {
  @override
  _OnboardingOnePageState createState() => _OnboardingOnePageState();
}

class _OnboardingOnePageState extends State<OnboardingOnePage> {

  final int _numPages = 3;
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  List<Widget> _buildPageIndicator(){
    List<Widget> list = [];
    for(int i = 0; i < _numPages; i++){
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive){
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xff7B51D3),
        borderRadius: BorderRadius.all(Radius.circular(12.0))
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.1,
                0.4,
                0.7,
                0.9
              ],
              colors: [
                Color(0xff3594DD),
                Color(0xff4563DB),
                Color(0xff5036D5),
                Color(0xff5B16D0),
              ]
            )
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () => navigatorToOnboardingPage(),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 600.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page){
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,  
                          children: [
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/onboarding0.png'
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(
                              height: 30.0
                            ),
                            Text(
                              'Connect people\naround the world',
                              style: kTitleStyle
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Nisi sint aute ad exercitation esse minim.Nisi sint aute ad exercitation esse minim.Nisi sint aute ad exercitation esse minim.',
                              style: kSubtitleStyle,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,  
                          children: [
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/onboarding1.png'
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(
                              height: 30.0
                            ),
                            Text(
                              'Live your life smarter\nwith us!',
                              style: kTitleStyle
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Nisi sint aute ad exercitation esse minim.Nisi sint aute ad exercitation esse minim.Nisi sint aute ad exercitation esse minim.',
                              style: kSubtitleStyle,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,  
                          children: [
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/onboarding2.png'
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(
                              height: 30.0
                            ),
                            Text(
                              'Get a new experience\nof imagination',
                              style: kTitleStyle
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Nisi sint aute ad exercitation esse minim.Nisi sint aute ad exercitation esse minim.Nisi sint aute ad exercitation esse minim.',
                              style: kSubtitleStyle,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator()
                ),
                _currentPage != _numPages - 1 ? Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomRight,
                    child: FlatButton(
                      onPressed: (){
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 500), 
                          curve: Curves.ease
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 30.0,
                          )
                        ],
                      ),
                    ),
                  ),
                ) : Text('')
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages -1 ? Container(
        height: 100,
        width: double.infinity,
        color: Colors.white,
        child: GestureDetector(
          onTap: () => navigatorToOnboardingPage(),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Text(
                'Get started',
                style: TextStyle(
                  color: Color(0xff5B16D0),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ),
      ) : Text('')
    );
  }

  void navigatorToOnboardingPage(){
    Navigator.pushNamed(context, 'onboarding');
  } 
}

final kTitleStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'CM Sans Serif',
  fontSize: 26.0,
  height: 1.5,
);

final kSubtitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
  height: 1.2,
);

//https://www.youtube.com/watch?v=8eRQyE2PN7w