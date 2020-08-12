import 'package:flutter/material.dart';
import 'package:onboarding_ui/onboarding/OnboardingScreen.dart';

void main() => runApp(OnboardingApp());

class OnboardingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
