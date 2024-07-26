import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/employee/domain/entity/employee_entity.dart';
import 'package:smart_billing/features/employee/domain/repository/employee_repository.dart';
import 'package:smart_billing/features/employee/domain/usecase/add_employee_usecase.dart';
import 'package:smart_billing/features/employee/data/datasource/employee_local_datasource.dart';
import 'package:smart_billing/features/employee/data/datasource/employee_remote_datasource.dart';
import 'package:smart_billing/features/employee/domain/usecase/update_employee_usecase.dart';
import 'package:dartz/dartz.dart';

class EmployeeRepositoryImpl extends EmployeeRepository {
  final EmployeeLocalDataSource localDataSource;
  final EmployeeRemoteDataSource remoteDataSource;

  EmployeeRepositoryImpl(
      {required this.localDataSource, required this.remoteDataSource});

  @override
  Future<Either<Failure, EmployeeEntity>> createEmployee(AddEmployeeParams employeeParams) {
    // TODO: implement createEmployee
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmployeeEntity>> getEmployee(String id) {
    // TODO: implement getEmployee
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<EmployeeEntity>>> getAllEmployees() {
    // TODO: implement getEmployees
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmployeeEntity>> updateEmployee(UpdateEmployeeParams employeeParams) {
    // TODO: implement updateEmployee
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EmployeeEntity>> deleteEmployee(String employeeId) {
    // TODO: implement deleteEmployee
    throw UnimplementedError();
  }
}

