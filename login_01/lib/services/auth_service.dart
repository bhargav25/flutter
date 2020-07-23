import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_01/dashboard/dashboard.dart';
import 'package:login_01/login/signup_page.dart';

class AuthService {
  //handle auth status
  handleAuthStatus() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return Dashboard();
        } else {
          return UserSignIn();
        }
      },
    );
  }

  //handle signout
  signOut() {
    FirebaseAuth.instance.signOut();
  }

  //handles signin
  signIn(AuthCredential authCreds) {
    FirebaseAuth.instance.signInWithCredential(authCreds);
  }

  //handles signin with OTP
  signInWithOTP(smsCode, verId) {
    AuthCredential authCreds = PhoneAuthProvider.getCredential(
      verificationId: verId,
      smsCode: smsCode,
    );
    signIn(authCreds);
  }
}
