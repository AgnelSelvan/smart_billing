part of 'login_bloc.dart';

class LoginState {
  const LoginState();

  LoginError emitError(Failure error) {
    return LoginError(
      message: error,
    );
  }

  LoginLoaded emitLoaded(UserEntity userEntity) {
    return LoginLoaded(userEntity: userEntity);
  }
}

class LoginError extends LoginState {
  final Failure message;
  const LoginError({
    required this.message,
  });
}

class LoginLoading extends LoginState {
  const LoginLoading();
}

class LoginLoaded extends LoginState {
  final UserEntity userEntity;
  const LoginLoaded({
    required this.userEntity,
  });
}
