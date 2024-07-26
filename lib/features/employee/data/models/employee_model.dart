import 'package:smart_billing/features/employee/domain/entity/employee_entity.dart';

class EmployeeModel extends EmployeeEntity {
  EmployeeModel();

  factory EmployeeModel.fromJson() {
    return EmployeeModel();
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
