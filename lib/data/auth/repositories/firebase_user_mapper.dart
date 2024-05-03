import 'package:firebase_auth/firebase_auth.dart';

import '../../../domain/auth/entities/current_user.dart';

extension FirebaseUserDomainX on User {
  CurrentUser toDomain() => CurrentUser(id: uid);
}
