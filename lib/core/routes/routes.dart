import 'package:flutter/material.dart';
import 'package:smart_billing/features/home/presentation/pages/home_page.dart';
import 'package:smart_billing/features/register/presentation/pages/register_page.dart';
import 'package:smart_billing/features/splash/presentation/pages/splash_page.dart';

class AppRoutes {
  static const splashPage = "/";
  static const homePage = "/home";
  static const registerCompanyPage = "/register/company";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case registerCompanyPage:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case splashPage:
      default:
        return MaterialPageRoute(builder: (_) => const SplashPage());
    }
  }
}
