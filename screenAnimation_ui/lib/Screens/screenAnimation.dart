import 'package:flutter/material.dart';
import 'package:screenAnimation_ui/Animation/FadeAnimation.dart';

class ScreenAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/one.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FadeIn(
                1,"t2b",
                Text(
                  'Himalayas',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
