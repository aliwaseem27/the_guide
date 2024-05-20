// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:the_guide/data/auth/repositories/firebase_auth_facade.dart'
    as _i10;
import 'package:the_guide/data/auth/repositories/firebase_injectable_module.dart'
    as _i15;
import 'package:the_guide/data/customers/repositories/firebase_customer_repository.dart'
    as _i8;
import 'package:the_guide/domain/auth/repositories/i_auth_facade.dart' as _i9;
import 'package:the_guide/domain/customers/repositories/i_customer_repository.dart'
    as _i7;
import 'package:the_guide/presentation/auth/blocs/auth_check/auth_check_bloc.dart'
    as _i11;
import 'package:the_guide/presentation/auth/blocs/sign_in/sign_in_bloc.dart'
    as _i12;
import 'package:the_guide/presentation/auth/blocs/sign_up/sign_up_bloc.dart'
    as _i13;
import 'package:the_guide/presentation/customers/blocs/add_customer/add_customer_bloc.dart'
    as _i14;
import 'package:the_guide/presentation/customers/blocs/customer_watcher/customer_watcher_bloc.dart'
    as _i3;

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
    gh.factory<_i3.CustomerWatcherBloc>(() => _i3.CustomerWatcherBloc());
    gh.lazySingleton<_i4.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i5.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i6.FirebaseFirestore>(
        () => firebaseInjectableModule.firebaseFirestore);
    gh.lazySingleton<_i7.ICustomerRepository>(
        () => _i8.FirebaseCustomerRepository(gh<_i6.FirebaseFirestore>()));
    gh.lazySingleton<_i9.IAuthFacade>(() => _i10.FirebaseAuthFacade(
          gh<_i5.FirebaseAuth>(),
          gh<_i4.GoogleSignIn>(),
        ));
    gh.factory<_i11.AuthCheckBloc>(
        () => _i11.AuthCheckBloc(gh<_i9.IAuthFacade>()));
    gh.factory<_i12.SignInBloc>(() => _i12.SignInBloc(gh<_i9.IAuthFacade>()));
    gh.factory<_i13.SignUpBloc>(() => _i13.SignUpBloc(gh<_i9.IAuthFacade>()));
    gh.factory<_i14.AddCustomerBloc>(
        () => _i14.AddCustomerBloc(gh<_i7.ICustomerRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}
