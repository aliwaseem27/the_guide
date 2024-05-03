import '../entities/current_user.dart';

abstract class IAuthFacade {
  Future<CurrentUser> getSignedInUser();

  Future<bool> isSignedIn();

  Future<void> signInWithEmailAndPassword({
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
