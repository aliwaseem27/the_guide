// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:the_guide/data/auth/repositories/firebase_auth_facade.dart'
    as _i9;
import 'package:the_guide/data/auth/repositories/firebase_injectable_module.dart'
    as _i14;
import 'package:the_guide/data/customers/repositories/firebase_customer_repository.dart'
    as _i7;
import 'package:the_guide/domain/auth/repositories/i_auth_facade.dart' as _i8;
import 'package:the_guide/domain/customers/repositories/i_customer_repository.dart'
    as _i6;
import 'package:the_guide/presentation/auth/blocs/auth_check/auth_check_bloc.dart'
    as _i10;
import 'package:the_guide/presentation/auth/blocs/sign_in/sign_in_bloc.dart'
    as _i11;
import 'package:the_guide/presentation/auth/blocs/sign_up/sign_up_bloc.dart'
    as _i12;
import 'package:the_guide/presentation/customers/blocs/add_customer/add_customer_bloc.dart'
    as _i13;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i5.FirebaseFirestore>(
        () => firebaseInjectableModule.firebaseFirestore);
    gh.lazySingleton<_i6.ICustomerRepository>(
        () => _i7.FirebaseCustomerRepository(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
          gh<_i4.FirebaseAuth>(),
          gh<_i3.GoogleSignIn>(),
        ));
    gh.factory<_i10.AuthCheckBloc>(
        () => _i10.AuthCheckBloc(gh<_i8.IAuthFacade>()));
    gh.factory<_i11.SignInBloc>(() => _i11.SignInBloc(gh<_i8.IAuthFacade>()));
    gh.factory<_i12.SignUpBloc>(() => _i12.SignUpBloc(gh<_i8.IAuthFacade>()));
    gh.factory<_i13.AddCustomerBloc>(
        () => _i13.AddCustomerBloc(gh<_i6.ICustomerRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}
