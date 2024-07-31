part of 'employee_bloc.dart';

class EmployeeState extends Equatable {
  final UserEntity? userEntity;
  final List<UserEntity> userEntities;
  const EmployeeState({
    this.userEntity,
    required this.userEntities,
  });

  @override
  List<Object> get props => [];

  EmployeeState copyWith({
    UserEntity? userEntity,
    List<UserEntity>? userEntities,
  }) {
    return EmployeeState(
      userEntity: userEntity ?? this.userEntity,
      userEntities: userEntities ?? this.userEntities,
    );
  }

  EmployeeErrorState emitError(Failure error) {
    return EmployeeErrorState(
      message: error,
      userEntity: userEntity,
      userEntities: userEntities,
    );
  }

  EmployeeLoadedState emitLoaded({
    UserEntity? userEntity,
    List<UserEntity>? userEntities,
  }) {
    return EmployeeLoadedState(
      userEntity: userEntity ?? this.userEntity,
      userEntities: userEntities ?? this.userEntities,
    );
  }
}

class EmployeeErrorState extends EmployeeState {
  final Failure message;
  const EmployeeErrorState({
    super.userEntity,
    required this.message,
    required super.userEntities,
  });
}

class EmployeeLoadingState extends EmployeeState {
  const EmployeeLoadingState({
    super.userEntity,
    required super.userEntities,
  });
}

class EmployeeLoadedState extends EmployeeState {
  const EmployeeLoadedState({
    super.userEntity,
    required super.userEntities,
  });
}
