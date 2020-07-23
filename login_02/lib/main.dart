import 'package:flutter/material.dart';
import 'package:login_02/generic/auth_status.dart';
import 'package:login_02/services/auth_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MaterialApp(
        home: LoginApp(),
        debugShowCheckedModeBanner: false,
      ),
    );

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //can add any number of providers as arrays
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
      ],
      child: Scaffold(
        body: AuthStatus(),
      ),
    );
  }
}
