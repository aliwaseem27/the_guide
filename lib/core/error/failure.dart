abstract class Failure {
  final String message;

  const Failure(this.message);
}

class AuthFailure extends Failure {
  const AuthFailure({required String message}) : super(message);
}

class FirestoreFailure extends Failure {
  const FirestoreFailure({required String message}) : super(message);
}

class ServerFailure extends Failure {
  const ServerFailure({required String message}) : super(message);
}

class WriteFileFailure extends Failure {
  const WriteFileFailure({required String message}) : super(message);
}

class ReadDatabaseFailure extends Failure {
  const ReadDatabaseFailure({required String message}) : super(message);
}
