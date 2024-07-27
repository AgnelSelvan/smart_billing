part of 'login_bloc.dart';

class LoginState extends Equatable {
  final List<LoginEntity> allLogins;
  final LoginEntity? aLogin;
  const LoginState({
    this.allLogins = const [],
    this.aLogin,
  });

  @override
  List<Object> get props => [];

  LoginState copyWith({
    List<LoginEntity>? allLogins,
    LoginEntity? aLogin,
  }) {
    return LoginState(
      allLogins: allLogins ?? this.allLogins,
      aLogin: aLogin ?? this.aLogin,
    );
  }

  LoginError emitError(Failure error) {
    return LoginError(
      message: error,
      allLogins: allLogins,
      aLogin: aLogin,
    );
  }

  LoginLoaded emitLoaded() {
    return LoginLoaded(
      allLogins: allLogins,
      aLogin: aLogin,
    );
  }
}

class LoginError extends LoginState {
  final Failure message;
  const LoginError({
    super.aLogin,
    super.allLogins,
    required this.message,
  });
}

class LoginLoading extends LoginState {
  const LoginLoading({
    super.aLogin,
    super.allLogins,
  });
}


class LoginLoaded extends LoginState {
  const LoginLoaded({
    super.aLogin,
    super.allLogins,
  });
}
