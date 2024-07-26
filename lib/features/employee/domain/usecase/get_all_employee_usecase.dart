import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/employee/domain/entity/employee_entity.dart';
import 'package:smart_billing/features/employee/domain/repository/employee_repository.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class GetAllEmployeeUseCase extends UseCase<List<EmployeeEntity>, NoParams> {
  final EmployeeRepository repository;

  GetAllEmployeeUseCase({required this.repository});

  @override
  Future<Either<Failure, List<EmployeeEntity>>> call(NoParams params) {
    return repository.getAllEmployees();
  }
}
