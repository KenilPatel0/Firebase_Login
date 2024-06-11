import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// Creates a user with the given email and password.
  /// Returns the [User] if successful, or null if an error occurs.
  Future<User?> createUserWithNameAndPassword(
      String email, String password) async {
    try {
      final UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    } on FirebaseAuthException catch (e) {
      log('Error during user creation: ${e.message}', error: e);
      throw e;
    } catch (e) {
      log('Unexpected error during user creation: $e');
      throw e;
    }
  }

  /// Signs in a user with the given email and password.
  /// Returns the [User] if successful, or null if an error occurs.
  Future<User?> loginUserWithNameAndPassword(
      String email, String password) async {
    try {
      final UserCredential cred = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    } on FirebaseAuthException catch (e) {
      log('Error during login: ${e.message}', error: e);
      throw e;
    } catch (e) {
      log('Unexpected error during login: $e');
      throw e;
    }
  }

  /// Signs out the current user.
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      log('Error during sign out: ${e.message}', error: e);
      throw e;
    } catch (e) {
      log('Unexpected error during sign out: $e');
      throw e;
    }
  }
}
