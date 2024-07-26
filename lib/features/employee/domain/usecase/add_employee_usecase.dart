import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/employee/domain/repository/employee_repository.dart';
import 'package:smart_billing/features/employee/domain/entity/employee_entity.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class AddEmployeeUseCase extends UseCase<EmployeeEntity, AddEmployeeParams> {
  final EmployeeRepository repository;

  AddEmployeeUseCase({required this.repository});

  @override
  Future<Either<Failure, EmployeeEntity>> call(AddEmployeeParams params) {
    return repository.createEmployee(params);
  }
}

class AddEmployeeParams {}
