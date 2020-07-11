import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color.fromRGBO(206,99,255,1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        'Next',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
