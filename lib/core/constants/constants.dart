import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_billing/core/di/di.dart';
import 'package:smart_billing/features/company/presentation/pages/company_page.dart';
import 'package:smart_billing/features/employee/presentation/manager/employee_bloc.dart';
import 'package:smart_billing/features/employee/presentation/pages/employee_page.dart';
import 'package:smart_billing/features/home/presentation/pages/home_page.dart';
import 'package:smart_billing/features/unit/presentation/pages/unit_page.dart';

class AppConstants {
  static List<SideNavbar> allSideNavDatas = [
    SideNavbar(
      title: 'Dashboard',
      iconData: Icons.home_work_rounded,
      navPath: '',
      widget: const SizedBox(),
    ),
    SideNavbar(
      title: 'Add',
      iconData: Icons.add_circle,
      subData: [
        SideNavbar(
          title: 'Employee',
          iconData: Icons.person_add,
          navPath: '',
          widget: BlocProvider(
            create: (BuildContext context) =>
                getIt<EmployeeBloc>()..add(const GetAllEmployeeEvent()),
            child: const EmployeePage(),
          ),
        ),
        SideNavbar(
          title: 'Company',
          iconData: Icons.business_center,
          navPath: '',
          widget: const CompanyPage(),
        ),
        SideNavbar(
          title: 'Unit',
          iconData: Icons.add_shopping_cart,
          navPath: '',
          widget: const UnitPage(),
        ),
      ],
      navPath: '',
    ),
  ];
}
