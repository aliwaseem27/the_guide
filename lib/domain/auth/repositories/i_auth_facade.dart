import 'package:dartz/dartz.dart';
import 'package:the_guide/core/app_core.dart';

import '../entities/current_user.dart';

abstract class IAuthFacade {
  Future<CurrentUser> getSignedInUser();

  bool isSignedIn();

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> registerInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signInWithGoogle();

  Future<void> signOut();
}
