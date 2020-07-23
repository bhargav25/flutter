import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class User {
  final String uid;
  const User({@required this.uid});
}

class AuthService {
  final _firebaseAuth = FirebaseAuth.instance;

  User _userFromFirebase(FirebaseUser user){
    return user == null ? null : User(uid: user.uid);
  }

  Stream<User> get onAuthStatus {
    return _firebaseAuth.onAuthStateChanged.map(_userFromFirebase);
  }

  //signout
  Future<void> signOut() async{
    return await _firebaseAuth.signOut();
  }

  //signin already existing user with email and password
  Future <User> signInWithEmailAndPassword (String email, String password) async{
    final authResult = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return _userFromFirebase(authResult.user);
  }

  //create new user with email and password
  Future <User> createUserWithEmailAndPassword (String email, String password) async {
    final authResult = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return _userFromFirebase(authResult.user);
  }

  //signin anonymously
  Future <User> signInAnonymously() async{
    final authResult = await _firebaseAuth.signInAnonymously();
    return _userFromFirebase(authResult.user);
  }
}