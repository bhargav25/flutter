import 'package:flutter/material.dart';
import 'package:login_01/services/auth_service.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RaisedButton(
        onPressed: AuthService().signOut,
        child: Text('Sign Out'),
      ),
    ));
  }
}
