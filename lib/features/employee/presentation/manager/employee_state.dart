part of 'employee_bloc.dart';

class EmployeeState {
  final UserEntity? userEntity;
  final List<UserEntity> userEntities;
  final EmployeeSortBy sortBy;
  final EmployeeSearchCategory searchCategory;
  const EmployeeState({
    this.userEntity,
    required this.userEntities,
    this.sortBy = EmployeeSortBy.userCode,
    this.searchCategory = EmployeeSearchCategory.name,
  });

  EmployeeState copyWith({
    UserEntity? userEntity,
    List<UserEntity>? userEntities,
    EmployeeSortBy? sortBy,
    EmployeeSearchCategory? searchCategory,
  }) {
    return EmployeeState(
      userEntity: userEntity ?? this.userEntity,
      userEntities: userEntities ?? this.userEntities,
      sortBy: sortBy ?? this.sortBy,
      searchCategory: searchCategory ?? this.searchCategory,
    );
  }

  EmployeeErrorState emitError(
    Failure error, {
    EmployeeSearchCategory? searchCategory,
    EmployeeSortBy? sortBy,
  }) {
    return EmployeeErrorState(
      message: error,
      userEntity: userEntity,
      userEntities: userEntities,
      sortBy: sortBy ?? this.sortBy,
      searchCategory: searchCategory ?? this.searchCategory,
    );
  }

  EmployeeLoadedState emitLoaded({
    UserEntity? userEntity,
    List<UserEntity>? userEntities,
    EmployeeSortBy? sortBy,
    EmployeeSearchCategory? searchCategory,
  }) {
    return EmployeeLoadedState(
      userEntity: userEntity ?? this.userEntity,
      userEntities: userEntities ?? this.userEntities,
      sortBy: sortBy ?? this.sortBy,
      searchCategory: searchCategory ?? this.searchCategory,
    );
  }

  AddedEmployeeState emitAddState({
    UserEntity? userEntity,
    List<UserEntity>? userEntities,
    EmployeeSortBy? sortBy,
    EmployeeSearchCategory? searchCategory,
  }) {
    return AddedEmployeeState(
      userEntity: userEntity ?? this.userEntity,
      userEntities: userEntities ?? this.userEntities,
      sortBy: sortBy ?? this.sortBy,
      searchCategory: searchCategory ?? this.searchCategory,
    );
  }
}

class EmployeeErrorState extends EmployeeState {
  final Failure message;
  const EmployeeErrorState({
    super.userEntity,
    required this.message,
    required super.userEntities,
    super.sortBy,
    super.searchCategory,
  });
}

class EmployeeLoadingState extends EmployeeState {
  const EmployeeLoadingState({
    super.userEntity,
    required super.userEntities,
    super.sortBy,
    super.searchCategory,
  });
}

class EmployeeLoadedState extends EmployeeState {
  const EmployeeLoadedState({
    super.userEntity,
    required super.userEntities,
    super.sortBy,
    super.searchCategory,
  });
}

class AddedEmployeeState extends EmployeeState {
  const AddedEmployeeState({
    super.userEntity,
    required super.userEntities,
    super.sortBy,
    super.searchCategory,
  });
}
