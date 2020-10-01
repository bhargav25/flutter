import 'package:flutter/material.dart';
import 'package:login_app/home.dart';
import 'package:login_app/services/auth_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthService>(
          create: (context) => AuthService(),
        ),
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
