import 'package:flutter/material.dart';
import 'package:login_02/services/auth_service.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _authService = Provider.of<AuthService>(context, listen: false);
    final _user = Provider.of<User>(context, listen: false);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(_user.uid),
        RaisedButton(
          onPressed: () => _authService.signOut(),
          child: Text('Sign Out'),
        ),
      ],
    );
  }
}
