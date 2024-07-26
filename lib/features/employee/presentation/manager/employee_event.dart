part of 'employee_bloc.dart';

class EmployeeEvent extends Equatable {
  const EmployeeEvent();

  @override
  List<Object> get props => [];
}

class AddEmployeeEvent extends EmployeeEvent {
  final AddEmployeeParams params;

  const AddEmployeeEvent({required this.params});
}

class UpdateEmployeeEvent extends EmployeeEvent {
  final UpdateEmployeeParams params;

  const UpdateEmployeeEvent({required this.params});
}

class DeleteEmployeeEvent extends EmployeeEvent {
  final String id;
  const DeleteEmployeeEvent({required this.id});
}

class GetAllEmployeesEvent extends EmployeeEvent {}

class GetAEmployeeEvent extends EmployeeEvent {
  final String id;
  const GetAEmployeeEvent({required this.id});
}
