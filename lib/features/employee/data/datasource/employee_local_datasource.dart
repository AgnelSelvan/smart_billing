import 'package:smart_billing/features/employee/data/models/employee_model.dart';
import 'package:smart_billing/features/employee/domain/entity/employee_entity.dart';

abstract class EmployeeLocalDataSource {
  Future<List<EmployeeModel>> getAllEmployees();
  Future<EmployeeEntity> addEmployee(EmployeeModel employeeModel);
  Future<EmployeeEntity> updateEmployee(EmployeeModel employeeModel);
  Future<EmployeeEntity> deleteEmployee(EmployeeModel employeeModel);
  Future<EmployeeModel?> getEmployeeById(String id);
}

class EmployeeLocalDataSourceImpl extends EmployeeLocalDataSource {

  @override
  Future<EmployeeEntity> addEmployee(EmployeeModel employeeModel) {
    // TODO: implement addEmployee
    throw UnimplementedError();
  }

  @override
  Future<EmployeeEntity> deleteEmployee(EmployeeModel employeeModel) {
    // TODO: implement deleteEmployee
    throw UnimplementedError();
  }

  @override
  Future<List<EmployeeModel>> getAllEmployees() {
    // TODO: implement getAllEmployees
    throw UnimplementedError();
  }

  @override
  Future<EmployeeEntity> updateEmployee(EmployeeModel employeeModel) {
    // TODO: implement updateEmployee
    throw UnimplementedError();
  }

  @override
  Future<EmployeeModel?> getEmployeeById(String id) {
    // TODO: implement getEmployeeById
    throw UnimplementedError();
  }
}
