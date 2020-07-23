import 'package:flutter/material.dart';
import 'package:login_02/app/signin/signup_page.dart';

class UserSignIn extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email ID',
                alignLabelWithHint: true,
                // border: InputBorder.none,
                icon: Icon(Icons.email),
              ),
              validator: (value) =>
                  value.isEmpty ? 'Email cannot be empty' : null,
              onSaved: (value) => _email = value,
            ),
            SizedBox(height: 20.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                alignLabelWithHint: true,
                // border: InputBorder.none,
                icon: Icon(Icons.vpn_key),
              ),
              validator: (value) =>
                  value.length < 4 ? 'Password must be atleast 4 characters long' : null,
              onSaved: (value) => _password = value,
            ),
            SizedBox(height: 30.0),
            RaisedButton(
              onPressed: () {},
              child: Text('Sign In'),
            ),
            SizedBox(height: 10.0),
            FlatButton(
              onPressed: () => _userRegistrationPage(context),
              child: Text('Not a member? Sign Up'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _userRegistrationPage(BuildContext context) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (_) => UserSignUp(),
      ),
    );
  }
}
