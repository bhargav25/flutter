import 'package:flutter/material.dart';
import 'package:login_01/login/signup_page.dart';
import 'package:login_01/services/auth_service.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AuthService().handleAuthStatus(),
    );
  }
}