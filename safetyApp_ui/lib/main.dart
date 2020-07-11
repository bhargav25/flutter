import 'package:flutter/material.dart';

import 'onboarding/OnboardingScreens.dart';

void main() => runApp(SafetyApp());

class SafetyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreens(),
    );
  }
}