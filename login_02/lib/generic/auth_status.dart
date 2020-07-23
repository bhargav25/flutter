import 'package:flutter/material.dart';
import 'package:login_02/app/home/dashboard.dart';
import 'package:login_02/app/signin/signin_page.dart';
import 'package:login_02/app/signin/signup_page.dart';
import 'package:login_02/services/auth_service.dart';
import 'package:provider/provider.dart';

class AuthStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User>(
      stream: authService.onAuthStatus,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final user = snapshot.data;
          
          // return user != null ? Dashboard() : UserSignIn();
          if (user != null) {
            print(user.uid);
            return Provider<User>.value(
              value: user,
              child: Dashboard(),
            );
          }
          return UserSignUp();
        }
        return CircularProgressIndicator();
      },
    );
  }
}
