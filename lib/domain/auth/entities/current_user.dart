import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

 
part 'current_user.freezed.dart';
part 'current_user.g.dart';

/// {@template current_user}
/// CurrentUser description
/// {@endtemplate}
@freezed
class CurrentUser with _$CurrentUser {
  /// {@macro current_user}
  const factory CurrentUser({ 
    required String id,
  }) = _CurrentUser;
  
    /// Creates a CurrentUser from Json map
  factory CurrentUser.fromJson(Map<String, dynamic> data) => _$CurrentUserFromJson(data);

}
