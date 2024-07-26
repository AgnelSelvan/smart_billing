part of 'register_bloc.dart';

class RegisterState extends Equatable {
  final List<RegisterEntity> allRegisters;
  final RegisterEntity? aRegister;
  const RegisterState({
    this.allRegisters = const [],
    this.aRegister,
  });

  @override
  List<Object> get props => [];

  RegisterState copyWith({
    List<RegisterEntity>? allRegisters,
    RegisterEntity? aRegister,
  }) {
    return RegisterState(
      allRegisters: allRegisters ?? this.allRegisters,
      aRegister: aRegister ?? this.aRegister,
    );
  }

  RegisterError emitError(Failure error) {
    return RegisterError(
      message: error,
      allRegisters: allRegisters,
      aRegister: aRegister,
    );
  }

  RegisterLoaded emitLoaded() {
    return RegisterLoaded(
      allRegisters: allRegisters,
      aRegister: aRegister,
    );
  }
}

class RegisterError extends RegisterState {
  final Failure message;
  const RegisterError({
    super.aRegister,
    super.allRegisters,
    required this.message,
  });
}

class RegisterLoading extends RegisterState {
  const RegisterLoading({
    super.aRegister,
    super.allRegisters,
  });
}


class RegisterLoaded extends RegisterState {
  const RegisterLoaded({
    super.aRegister,
    super.allRegisters,
  });
}
