import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:the_guide/data/auth/repositories/firebase_user_mapper.dart';
import 'package:the_guide/domain/auth/entities/current_user.dart';

import '../../../domain/auth/repositories/i_auth_facade.dart';

class FirebaseAuthFacade implements IAuthFacade {
  final _firebaseAuth = FirebaseAuth.instance;
  final _googleSignIn = GoogleSignIn();

  @override
  Future<CurrentUser> getSignedInUser() async {
    return _firebaseAuth.currentUser!.toDomain();
  }

  @override
  bool isSignedIn() {
    if (_firebaseAuth.currentUser == null) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Future<void> registerInWithEmailAndPassword({required String email, required String password}) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (kDebugMode) {
        print(e.code);
      }
    }
  }

  @override
  Future<void> signInWithEmailAndPassword({required String email, required String password}) async {
    try {
      final userCredential = _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (kDebugMode) {
        print("You have encountered the following exception: $e");
        print(e.code);
      }
    } catch (e){
      print("You have encountered the following exception: $e");
    }
  }

  @override
  Future<void> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      final googleAuth = await googleUser!.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _firebaseAuth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      if (kDebugMode) {
        print(e.code);
      }
    }
  }

  @override
  Future<void> signOut() async {
    Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }
}
