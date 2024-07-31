part of 'employee_bloc.dart';

class EmployeeEvent extends Equatable {
  const EmployeeEvent();

  @override
  List<Object> get props => [];
}

class AddEmployeeEvent extends EmployeeEvent {
  final AddUserParams addUserParams;

  const AddEmployeeEvent({
    required this.addUserParams,
  });
}

class GetAllEmployeeEvent extends EmployeeEvent {
  const GetAllEmployeeEvent();
}
