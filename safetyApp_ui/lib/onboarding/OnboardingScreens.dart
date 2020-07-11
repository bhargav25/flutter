import 'package:flutter/material.dart';
import 'package:safetyApp_ui/OnboardingModel.dart';
import 'package:safetyApp_ui/widgets/ArtWorkWidget.dart';
import 'package:safetyApp_ui/widgets/OnboardingButton.dart';

class OnboardingScreens extends StatelessWidget {
  List<OnbMdl> onbMdl = [
    OnbMdl(
      bgColor: Color.fromRGBO(242, 125, 123, 1),
      text1: 'Be Connected, Be Smart',
      text2: 'Join a community dedicated to keeping each other safe',
      imgPath: 'assets/images/card.png',
    ),
    OnbMdl(
      bgColor: Color.fromRGBO(176, 124, 242, 1),
      text1: 'Security Awareness',
      text2: 'Receive notifications in real-time of any danger in your area.',
      imgPath: 'assets/images/chart.png',
    ),
    OnbMdl(
      bgColor: Color.fromRGBO(204, 209, 229, 1),
      text1: 'Invest',
      text2: 'Receive notifications in real-time of any danger in your area.',
      imgPath: 'assets/images/list.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(1),
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Discover',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ArtWorkWidget(onbMdl[0]),
                OnboardingButton()
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Security',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ArtWorkWidget(onbMdl[1]),
                OnboardingButton()
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Invest',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ArtWorkWidget(onbMdl[2]),
                OnboardingButton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
