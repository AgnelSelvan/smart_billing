import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/employee/domain/entity/employee_entity.dart';
import 'package:smart_billing/features/employee/domain/repository/employee_repository.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class GetAEmployeeUseCase extends UseCase<EmployeeEntity?, String> {
  final EmployeeRepository repository;

  GetAEmployeeUseCase({required this.repository});

  @override
  Future<Either<Failure, EmployeeEntity?>> call(String params) {
    return repository.getEmployee(params);
  }
}
