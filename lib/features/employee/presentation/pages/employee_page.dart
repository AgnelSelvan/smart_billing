import 'package:flutter/material.dart';
import 'package:smart_billing/core/utils/app/app_bloc_stateless.dart';
import 'package:smart_billing/features/employee/presentation/pages/all_employee.dart';

class EmployeePage extends AppStatelessWidget {
  const EmployeePage({super.key});

  @override
  bool get showTranslation => false;

  @override
  Widget buildView(BuildContext context) {
    return const EmployeeListingScreen();
  }
}
