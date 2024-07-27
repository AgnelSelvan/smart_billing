part of 'register_bloc.dart';

class RegisterState extends Equatable {
  final CompanyEntity? companyEntity;
  final UserEntity? ownerEntity;
  const RegisterState({
    this.companyEntity,
    this.ownerEntity,
  });

  @override
  List<Object> get props => [];

  RegisterState copyWith({
    CompanyEntity? companyEntity,
    UserEntity? ownerEntity,
  }) {
    return RegisterState(
      companyEntity: companyEntity ?? this.companyEntity,
      ownerEntity: ownerEntity ?? this.ownerEntity,
    );
  }

  RegisterError emitError(Failure error) {
    return RegisterError(
      message: error,
      ownerEntity: ownerEntity,
      companyEntity: companyEntity,
    );
  }

  RegisterLoaded emitLoaded({
    required CompanyEntity companyEntity,
    required UserEntity ownerEntity,
  }) {
    return RegisterLoaded(
      ownerEntity: ownerEntity,
      companyEntity: companyEntity,
    );
  }
}

class RegisterError extends RegisterState {
  final Failure message;
  const RegisterError({
    super.ownerEntity,
    super.companyEntity,
    required this.message,
  });
}

class RegisterLoading extends RegisterState {
  const RegisterLoading({
    super.ownerEntity,
    super.companyEntity,
  });
}

class RegisterLoaded extends RegisterState {
  const RegisterLoaded({
    super.companyEntity,
    super.ownerEntity,
  });
}
