part of 'employee_bloc.dart';

class EmployeeState extends Equatable {
  final List<EmployeeEntity> allEmployees;
  final EmployeeEntity? aEmployee;
  const EmployeeState({
    this.allEmployees = const [],
    this.aEmployee,
  });

  @override
  List<Object> get props => [];

  EmployeeState copyWith({
    List<EmployeeEntity>? allEmployees,
    EmployeeEntity? aEmployee,
  }) {
    return EmployeeState(
      allEmployees: allEmployees ?? this.allEmployees,
      aEmployee: aEmployee ?? this.aEmployee,
    );
  }

  EmployeeError emitError(Failure error) {
    return EmployeeError(
      message: error,
      allEmployees: allEmployees,
      aEmployee: aEmployee,
    );
  }

  EmployeeLoaded emitLoaded() {
    return EmployeeLoaded(
      allEmployees: allEmployees,
      aEmployee: aEmployee,
    );
  }
}

class EmployeeError extends EmployeeState {
  final Failure message;
  const EmployeeError({
    super.aEmployee,
    super.allEmployees,
    required this.message,
  });
}

class EmployeeLoading extends EmployeeState {
  const EmployeeLoading({
    super.aEmployee,
    super.allEmployees,
  });
}


class EmployeeLoaded extends EmployeeState {
  const EmployeeLoaded({
    super.aEmployee,
    super.allEmployees,
  });
}
