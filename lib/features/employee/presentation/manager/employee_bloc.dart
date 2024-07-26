import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/employee/domain/entity/employee_entity.dart';
import 'package:smart_billing/features/employee/domain/usecase/add_employee_usecase.dart';
import 'package:smart_billing/features/employee/domain/usecase/delete_employee_usecase.dart';
import 'package:smart_billing/features/employee/domain/usecase/get_a_employee_usecase.dart';
import 'package:smart_billing/features/employee/domain/usecase/get_all_employee_usecase.dart';
import 'package:smart_billing/features/employee/domain/usecase/update_employee_usecase.dart';
import 'package:smart_billing/core/utils/usecase.dart';

part 'employee_event.dart';
part 'employee_state.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  final AddEmployeeUseCase addEmployeeUseCase;
  final UpdateEmployeeUseCase updateEmployeeUseCase;
  final DeleteEmployeeUseCase deleteEmployeeUseCase;
  final GetAllEmployeeUseCase getAllEmployeeUseCase;
  final GetAEmployeeUseCase getAEmployeeUseCase;

  EmployeeBloc(this.addEmployeeUseCase, this.updateEmployeeUseCase, this.deleteEmployeeUseCase,
      this.getAllEmployeeUseCase, this.getAEmployeeUseCase)
      : super(const EmployeeLoading()) {
    on<GetAllEmployeesEvent>((event, emit) async {
      final response = await getAllEmployeeUseCase.call(NoParams());
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => emit(
          state.copyWith(
            allEmployees: r,
          ).emitLoaded(),
        ),
      );
    });

    on<GetAEmployeeEvent>((event, emit) async {
      final response = await getAEmployeeUseCase.call(event.id);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => emit(
          state.copyWith(
            allEmployees: state.allEmployees,
            aEmployee: r,
          ),
        ),
      );
    });

    on<AddEmployeeEvent>((event, emit) async {
      final response = await addEmployeeUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllEmployeesEvent()),
      );
    });

    on<UpdateEmployeeEvent>((event, emit) async {
      final response = await updateEmployeeUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllEmployeesEvent()),
      );
    });

    on<DeleteEmployeeEvent>((event, emit) async {
      final response = await deleteEmployeeUseCase.call(event.id);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllEmployeesEvent()),
      );
    });
  }
}
