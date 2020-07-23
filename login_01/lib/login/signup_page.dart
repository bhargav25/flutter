import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_01/services/auth_service.dart';

class UserSignIn extends StatefulWidget {
  @override
  _UserSignInState createState() => _UserSignInState();
}

class _UserSignInState extends State<UserSignIn> {
  final _formKey = GlobalKey<FormState>();

  String phoneNo, verificationId, smsCode;

  bool codeSent = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Enter Phone number',
                  ),
                  onChanged: (val) {
                    setState(() {
                      this.phoneNo = val;
                    });
                  },
                ),
                SizedBox(height: 30),
                codeSent
                    ? Padding(
                        padding: EdgeInsets.only(left: 25.0, right: 25.0),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(hintText: 'Enter OTP'),
                          onChanged: (val) {
                            setState(() {
                              this.smsCode = val;
                            });
                          },
                        ))
                    : Container(),
                SizedBox(height: 30),
                RaisedButton(
                  onPressed: () {
                    codeSent
                        ? AuthService().signInWithOTP(smsCode, verificationId)
                        : verifyPhone(phoneNo);
                  },
                  child: Center(child: codeSent ? Text('Login'):Text('Verify')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> verifyPhone(phoneNo) async{
    final PhoneVerificationCompleted verified = (AuthCredential authResult) {
      AuthService().signIn(authResult);
    };

    final PhoneVerificationFailed verificationFailed =
        (AuthException authException) {
      print('${authException.message}');
    };

    final PhoneCodeSent smsSent = (String verId, [int forceResend]) {
      this.verificationId = verId;
      setState(() {
        this.codeSent = true;
      });
    };

    final PhoneCodeAutoRetrievalTimeout autoTimeout = (String verId) {
      this.verificationId = verId;
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNo,
      timeout: const Duration(seconds: 5),
      verificationCompleted: verified,
      verificationFailed: verificationFailed,
      codeSent: smsSent,
      codeAutoRetrievalTimeout: autoTimeout,
    );
  }
}
