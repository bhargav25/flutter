import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService with ChangeNotifier {
  final _firebaseAuth = FirebaseAuth.instance;

  Stream<User> get onAuthStatus {
    return _firebaseAuth.authStateChanges();
  }
}
