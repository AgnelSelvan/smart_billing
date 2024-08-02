import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_ui/boxes_view.dart';
import 'package:smart_billing/core/di/di.dart';
import 'package:smart_billing/core/di/module/hive_module.dart';
import 'package:smart_billing/features/employee/presentation/manager/employee_bloc.dart';
import 'package:smart_billing/features/employee/presentation/pages/add_employee.dart';
import 'package:smart_billing/features/home/presentation/manager/home_bloc.dart';
import 'package:smart_billing/features/home/presentation/pages/home_page.dart';
import 'package:smart_billing/features/login/presentation/manager/login_bloc.dart';
import 'package:smart_billing/features/login/presentation/pages/login_page.dart';
import 'package:smart_billing/features/register/presentation/manager/register_bloc.dart';
import 'package:smart_billing/features/register/presentation/pages/register_page.dart';
import 'package:smart_billing/features/splash/presentation/manager/splash_bloc.dart';
import 'package:smart_billing/features/splash/presentation/pages/splash_page.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';

class AppRoutes {
  static const splashPage = '/';
  static const homePage = '/home';
  static const registerCompanyPage = '/register/company';
  static const loginPage = '/login';
  static const viewHivePage = '/view/hive';
  static const addEmployeePage = '/add/employee';
  static const updateEmployeePage = '/update/employee';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) {
              return getIt<HomeBloc>();
            },
            child: const HomePage(),
          ),
        );
      case addEmployeePage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) {
              return getIt<EmployeeBloc>()..add(const GetAllEmployeeEvent());
            },
            child: const AddEmployeePage(
              crud: Crud.add,
            ),
          ),
        );
      case updateEmployeePage:
        final args = settings.arguments as Map<String, dynamic>;
        final user = args['user'] as UserEntity;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) {
              return getIt<EmployeeBloc>(param1: user)
                ..add(const GetAllEmployeeEvent());
            },
            child: AddEmployeePage(
              crud: Crud.update,
              userEntity: user,
            ),
          ),
        );
      case registerCompanyPage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => getIt<RegisterBloc>(),
            child: const RegisterPage(),
          ),
        );
      case loginPage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginBloc>(),
            child: LoginPage(),
          ),
        );
      case viewHivePage:
        return MaterialPageRoute(
          builder: (_) => HiveBoxesView(
            hiveBoxes: HiveAdapters.allBoxes,
            onError: (err) {},
          ),
        );
      case splashPage:
      default:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SplashBloc>(),
            child: const SplashPage(),
          ),
        );
    }
  }
}
