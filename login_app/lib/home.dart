import 'package:flutter/material.dart';
import 'package:login_app/screens/landing_page.dart';
import 'package:login_app/screens/signIn_page.dart';
import 'package:login_app/services/auth_service.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      body: StreamBuilder(
        stream: authService.onAuthStatus,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else {
            final user = snapshot.data;
            if (user != null) {
              return LandingPage();
            }
            return UserSignIn();
          }
        },
      ),
    );
  }
}
