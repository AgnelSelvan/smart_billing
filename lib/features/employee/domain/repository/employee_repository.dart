import 'package:smart_billing/features/employee/domain/entity/employee_entity.dart';
import 'package:smart_billing/features/employee/domain/usecase/add_employee_usecase.dart';
import 'package:smart_billing/features/employee/domain/usecase/update_employee_usecase.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class EmployeeRepository {
  Future<Either<Failure, EmployeeEntity>> getEmployee(String id);
  Future<Either<Failure, List<EmployeeEntity>>> getAllEmployees();
  Future<Either<Failure, EmployeeEntity>> createEmployee(AddEmployeeParams employeeParams);
  Future<Either<Failure, EmployeeEntity>> updateEmployee(UpdateEmployeeParams employeeParams);
  Future<Either<Failure, EmployeeEntity>> deleteEmployee(String employeeId);
}
