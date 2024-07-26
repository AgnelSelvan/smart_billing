import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/employee/domain/repository/employee_repository.dart';
import 'package:smart_billing/features/employee/domain/entity/employee_entity.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class UpdateEmployeeUseCase extends UseCase<EmployeeEntity, UpdateEmployeeParams> {
  final EmployeeRepository repository;

  UpdateEmployeeUseCase({required this.repository});

  @override
  Future<Either<Failure, EmployeeEntity>> call(UpdateEmployeeParams params) {
    return repository.updateEmployee(params);
  }
}

class UpdateEmployeeParams {}
