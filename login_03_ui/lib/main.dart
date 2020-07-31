import 'package:flutter/material.dart';
import 'package:login_03_ui/signin_page.dart';
import 'package:login_03_ui/signup_page.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
