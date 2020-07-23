import 'package:flutter/material.dart';
import 'package:login_02/services/auth_service.dart';
import 'package:provider/provider.dart';

class UserSignUp extends StatelessWidget {
  String _email;
  String _password;
  final _formKey = GlobalKey<FormState>();

  bool _validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  Future<void> _validateAndSubmit(BuildContext context) async{
    if (_validateAndSave()) {
      try {
        final _authService = Provider.of<AuthService>(context, listen: false);
        final user = await _authService.createUserWithEmailAndPassword(_email, _password);
        print('uid: ${user.uid}');
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
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
                validator: (value) => value.length < 4
                    ? 'Password must be atleast 4 characters long'
                    : null,
                onSaved: (value) => _password = value,
              ),
              SizedBox(height: 30.0),
              RaisedButton(
                onPressed: () => _validateAndSubmit(context),
                child: Text('Sign Up'),
              ),
              SizedBox(height: 10.0),
              FlatButton(
                onPressed: () => {Navigator.of(context).pop()},
                child: Text('Already a member? Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
