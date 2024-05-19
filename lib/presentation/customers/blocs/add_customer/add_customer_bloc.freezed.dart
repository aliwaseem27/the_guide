// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddCustomerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String notesStr) notesChanged,
    required TResult Function(String tagsStr) tagsChanged,
    required TResult Function() addCustomerButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String notesStr)? notesChanged,
    TResult? Function(String tagsStr)? tagsChanged,
    TResult? Function()? addCustomerButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String notesStr)? notesChanged,
    TResult Function(String tagsStr)? tagsChanged,
    TResult Function()? addCustomerButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_AddCustomerButtonPressed value)
        addCustomerButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_NotesChanged value)? notesChanged,
    TResult? Function(_TagsChanged value)? tagsChanged,
    TResult? Function(_AddCustomerButtonPressed value)?
        addCustomerButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_AddCustomerButtonPressed value)? addCustomerButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerEventCopyWith<$Res> {
  factory $AddCustomerEventCopyWith(
          AddCustomerEvent value, $Res Function(AddCustomerEvent) then) =
      _$AddCustomerEventCopyWithImpl<$Res, AddCustomerEvent>;
}

/// @nodoc
class _$AddCustomerEventCopyWithImpl<$Res, $Val extends AddCustomerEvent>
    implements $AddCustomerEventCopyWith<$Res> {
  _$AddCustomerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$AddCustomerEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$NameChangedImpl(
      null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'AddCustomerEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String notesStr) notesChanged,
    required TResult Function(String tagsStr) tagsChanged,
    required TResult Function() addCustomerButtonPressed,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String notesStr)? notesChanged,
    TResult? Function(String tagsStr)? tagsChanged,
    TResult? Function()? addCustomerButtonPressed,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String notesStr)? notesChanged,
    TResult Function(String tagsStr)? tagsChanged,
    TResult Function()? addCustomerButtonPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_AddCustomerButtonPressed value)
        addCustomerButtonPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_NotesChanged value)? notesChanged,
    TResult? Function(_TagsChanged value)? tagsChanged,
    TResult? Function(_AddCustomerButtonPressed value)?
        addCustomerButtonPressed,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_AddCustomerButtonPressed value)? addCustomerButtonPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements AddCustomerEvent {
  const factory _NameChanged(final String nameStr) = _$NameChangedImpl;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneChangedImplCopyWith<$Res> {
  factory _$$PhoneChangedImplCopyWith(
          _$PhoneChangedImpl value, $Res Function(_$PhoneChangedImpl) then) =
      __$$PhoneChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneStr});
}

/// @nodoc
class __$$PhoneChangedImplCopyWithImpl<$Res>
    extends _$AddCustomerEventCopyWithImpl<$Res, _$PhoneChangedImpl>
    implements _$$PhoneChangedImplCopyWith<$Res> {
  __$$PhoneChangedImplCopyWithImpl(
      _$PhoneChangedImpl _value, $Res Function(_$PhoneChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneStr = null,
  }) {
    return _then(_$PhoneChangedImpl(
      null == phoneStr
          ? _value.phoneStr
          : phoneStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneChangedImpl implements _PhoneChanged {
  const _$PhoneChangedImpl(this.phoneStr);

  @override
  final String phoneStr;

  @override
  String toString() {
    return 'AddCustomerEvent.phoneChanged(phoneStr: $phoneStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneChangedImpl &&
            (identical(other.phoneStr, phoneStr) ||
                other.phoneStr == phoneStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneChangedImplCopyWith<_$PhoneChangedImpl> get copyWith =>
      __$$PhoneChangedImplCopyWithImpl<_$PhoneChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String notesStr) notesChanged,
    required TResult Function(String tagsStr) tagsChanged,
    required TResult Function() addCustomerButtonPressed,
  }) {
    return phoneChanged(phoneStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String notesStr)? notesChanged,
    TResult? Function(String tagsStr)? tagsChanged,
    TResult? Function()? addCustomerButtonPressed,
  }) {
    return phoneChanged?.call(phoneStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String notesStr)? notesChanged,
    TResult Function(String tagsStr)? tagsChanged,
    TResult Function()? addCustomerButtonPressed,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phoneStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_AddCustomerButtonPressed value)
        addCustomerButtonPressed,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_NotesChanged value)? notesChanged,
    TResult? Function(_TagsChanged value)? tagsChanged,
    TResult? Function(_AddCustomerButtonPressed value)?
        addCustomerButtonPressed,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_AddCustomerButtonPressed value)? addCustomerButtonPressed,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements AddCustomerEvent {
  const factory _PhoneChanged(final String phoneStr) = _$PhoneChangedImpl;

  String get phoneStr;
  @JsonKey(ignore: true)
  _$$PhoneChangedImplCopyWith<_$PhoneChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$AddCustomerEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'AddCustomerEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String notesStr) notesChanged,
    required TResult Function(String tagsStr) tagsChanged,
    required TResult Function() addCustomerButtonPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String notesStr)? notesChanged,
    TResult? Function(String tagsStr)? tagsChanged,
    TResult? Function()? addCustomerButtonPressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String notesStr)? notesChanged,
    TResult Function(String tagsStr)? tagsChanged,
    TResult Function()? addCustomerButtonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_AddCustomerButtonPressed value)
        addCustomerButtonPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_NotesChanged value)? notesChanged,
    TResult? Function(_TagsChanged value)? tagsChanged,
    TResult? Function(_AddCustomerButtonPressed value)?
        addCustomerButtonPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_AddCustomerButtonPressed value)? addCustomerButtonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements AddCustomerEvent {
  const factory _EmailChanged(final String emailStr) = _$EmailChangedImpl;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotesChangedImplCopyWith<$Res> {
  factory _$$NotesChangedImplCopyWith(
          _$NotesChangedImpl value, $Res Function(_$NotesChangedImpl) then) =
      __$$NotesChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String notesStr});
}

/// @nodoc
class __$$NotesChangedImplCopyWithImpl<$Res>
    extends _$AddCustomerEventCopyWithImpl<$Res, _$NotesChangedImpl>
    implements _$$NotesChangedImplCopyWith<$Res> {
  __$$NotesChangedImplCopyWithImpl(
      _$NotesChangedImpl _value, $Res Function(_$NotesChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notesStr = null,
  }) {
    return _then(_$NotesChangedImpl(
      null == notesStr
          ? _value.notesStr
          : notesStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotesChangedImpl implements _NotesChanged {
  const _$NotesChangedImpl(this.notesStr);

  @override
  final String notesStr;

  @override
  String toString() {
    return 'AddCustomerEvent.notesChanged(notesStr: $notesStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesChangedImpl &&
            (identical(other.notesStr, notesStr) ||
                other.notesStr == notesStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notesStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesChangedImplCopyWith<_$NotesChangedImpl> get copyWith =>
      __$$NotesChangedImplCopyWithImpl<_$NotesChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String notesStr) notesChanged,
    required TResult Function(String tagsStr) tagsChanged,
    required TResult Function() addCustomerButtonPressed,
  }) {
    return notesChanged(notesStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String notesStr)? notesChanged,
    TResult? Function(String tagsStr)? tagsChanged,
    TResult? Function()? addCustomerButtonPressed,
  }) {
    return notesChanged?.call(notesStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String notesStr)? notesChanged,
    TResult Function(String tagsStr)? tagsChanged,
    TResult Function()? addCustomerButtonPressed,
    required TResult orElse(),
  }) {
    if (notesChanged != null) {
      return notesChanged(notesStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_AddCustomerButtonPressed value)
        addCustomerButtonPressed,
  }) {
    return notesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_NotesChanged value)? notesChanged,
    TResult? Function(_TagsChanged value)? tagsChanged,
    TResult? Function(_AddCustomerButtonPressed value)?
        addCustomerButtonPressed,
  }) {
    return notesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_AddCustomerButtonPressed value)? addCustomerButtonPressed,
    required TResult orElse(),
  }) {
    if (notesChanged != null) {
      return notesChanged(this);
    }
    return orElse();
  }
}

abstract class _NotesChanged implements AddCustomerEvent {
  const factory _NotesChanged(final String notesStr) = _$NotesChangedImpl;

  String get notesStr;
  @JsonKey(ignore: true)
  _$$NotesChangedImplCopyWith<_$NotesChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TagsChangedImplCopyWith<$Res> {
  factory _$$TagsChangedImplCopyWith(
          _$TagsChangedImpl value, $Res Function(_$TagsChangedImpl) then) =
      __$$TagsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tagsStr});
}

/// @nodoc
class __$$TagsChangedImplCopyWithImpl<$Res>
    extends _$AddCustomerEventCopyWithImpl<$Res, _$TagsChangedImpl>
    implements _$$TagsChangedImplCopyWith<$Res> {
  __$$TagsChangedImplCopyWithImpl(
      _$TagsChangedImpl _value, $Res Function(_$TagsChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagsStr = null,
  }) {
    return _then(_$TagsChangedImpl(
      null == tagsStr
          ? _value.tagsStr
          : tagsStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TagsChangedImpl implements _TagsChanged {
  const _$TagsChangedImpl(this.tagsStr);

  @override
  final String tagsStr;

  @override
  String toString() {
    return 'AddCustomerEvent.tagsChanged(tagsStr: $tagsStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagsChangedImpl &&
            (identical(other.tagsStr, tagsStr) || other.tagsStr == tagsStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tagsStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagsChangedImplCopyWith<_$TagsChangedImpl> get copyWith =>
      __$$TagsChangedImplCopyWithImpl<_$TagsChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String notesStr) notesChanged,
    required TResult Function(String tagsStr) tagsChanged,
    required TResult Function() addCustomerButtonPressed,
  }) {
    return tagsChanged(tagsStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String notesStr)? notesChanged,
    TResult? Function(String tagsStr)? tagsChanged,
    TResult? Function()? addCustomerButtonPressed,
  }) {
    return tagsChanged?.call(tagsStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String notesStr)? notesChanged,
    TResult Function(String tagsStr)? tagsChanged,
    TResult Function()? addCustomerButtonPressed,
    required TResult orElse(),
  }) {
    if (tagsChanged != null) {
      return tagsChanged(tagsStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_AddCustomerButtonPressed value)
        addCustomerButtonPressed,
  }) {
    return tagsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_NotesChanged value)? notesChanged,
    TResult? Function(_TagsChanged value)? tagsChanged,
    TResult? Function(_AddCustomerButtonPressed value)?
        addCustomerButtonPressed,
  }) {
    return tagsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_AddCustomerButtonPressed value)? addCustomerButtonPressed,
    required TResult orElse(),
  }) {
    if (tagsChanged != null) {
      return tagsChanged(this);
    }
    return orElse();
  }
}

abstract class _TagsChanged implements AddCustomerEvent {
  const factory _TagsChanged(final String tagsStr) = _$TagsChangedImpl;

  String get tagsStr;
  @JsonKey(ignore: true)
  _$$TagsChangedImplCopyWith<_$TagsChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCustomerButtonPressedImplCopyWith<$Res> {
  factory _$$AddCustomerButtonPressedImplCopyWith(
          _$AddCustomerButtonPressedImpl value,
          $Res Function(_$AddCustomerButtonPressedImpl) then) =
      __$$AddCustomerButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddCustomerButtonPressedImplCopyWithImpl<$Res>
    extends _$AddCustomerEventCopyWithImpl<$Res, _$AddCustomerButtonPressedImpl>
    implements _$$AddCustomerButtonPressedImplCopyWith<$Res> {
  __$$AddCustomerButtonPressedImplCopyWithImpl(
      _$AddCustomerButtonPressedImpl _value,
      $Res Function(_$AddCustomerButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddCustomerButtonPressedImpl implements _AddCustomerButtonPressed {
  const _$AddCustomerButtonPressedImpl();

  @override
  String toString() {
    return 'AddCustomerEvent.addCustomerButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCustomerButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String notesStr) notesChanged,
    required TResult Function(String tagsStr) tagsChanged,
    required TResult Function() addCustomerButtonPressed,
  }) {
    return addCustomerButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String notesStr)? notesChanged,
    TResult? Function(String tagsStr)? tagsChanged,
    TResult? Function()? addCustomerButtonPressed,
  }) {
    return addCustomerButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String notesStr)? notesChanged,
    TResult Function(String tagsStr)? tagsChanged,
    TResult Function()? addCustomerButtonPressed,
    required TResult orElse(),
  }) {
    if (addCustomerButtonPressed != null) {
      return addCustomerButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_NotesChanged value) notesChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_AddCustomerButtonPressed value)
        addCustomerButtonPressed,
  }) {
    return addCustomerButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_NotesChanged value)? notesChanged,
    TResult? Function(_TagsChanged value)? tagsChanged,
    TResult? Function(_AddCustomerButtonPressed value)?
        addCustomerButtonPressed,
  }) {
    return addCustomerButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_NotesChanged value)? notesChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_AddCustomerButtonPressed value)? addCustomerButtonPressed,
    required TResult orElse(),
  }) {
    if (addCustomerButtonPressed != null) {
      return addCustomerButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _AddCustomerButtonPressed implements AddCustomerEvent {
  const factory _AddCustomerButtonPressed() = _$AddCustomerButtonPressedImpl;
}

/// @nodoc
mixin _$AddCustomerState {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  DateTime get dateAdded => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCustomerStateCopyWith<AddCustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerStateCopyWith<$Res> {
  factory $AddCustomerStateCopyWith(
          AddCustomerState value, $Res Function(AddCustomerState) then) =
      _$AddCustomerStateCopyWithImpl<$Res, AddCustomerState>;
  @useResult
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      String email,
      String notes,
      DateTime dateAdded,
      List<String> tags});
}

/// @nodoc
class _$AddCustomerStateCopyWithImpl<$Res, $Val extends AddCustomerState>
    implements $AddCustomerStateCopyWith<$Res> {
  _$AddCustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? notes = null,
    Object? dateAdded = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AddCustomerStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      String email,
      String notes,
      DateTime dateAdded,
      List<String> tags});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddCustomerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? notes = null,
    Object? dateAdded = null,
    Object? tags = null,
  }) {
    return _then(_$InitialImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.id,
      required this.name,
      required this.phoneNumber,
      required this.email,
      required this.notes,
      required this.dateAdded,
      required final List<String> tags})
      : _tags = tags;

  @override
  final String id;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String notes;
  @override
  final DateTime dateAdded;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'AddCustomerState(id: $id, name: $name, phoneNumber: $phoneNumber, email: $email, notes: $notes, dateAdded: $dateAdded, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, phoneNumber, email,
      notes, dateAdded, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AddCustomerState {
  const factory _Initial(
      {required final String id,
      required final String name,
      required final String phoneNumber,
      required final String email,
      required final String notes,
      required final DateTime dateAdded,
      required final List<String> tags}) = _$InitialImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  String get notes;
  @override
  DateTime get dateAdded;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
