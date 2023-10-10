import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String userEmail;

  Future<String?> checkUserSignedIn() async {
    try {
      if (_auth.currentUser == null)
        return "NLIN";
      else
        return "LIN";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signInUser(
      {required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return "";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signUpUser(
      {required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> forgotPassword({required String email}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return "";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signOutUser() async {
    try {
      await _auth.signOut();
      return "";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  String getUserEmail() {
    final User? user = _auth.currentUser;
    userEmail = user!.email!;
    return userEmail;
  }
}
