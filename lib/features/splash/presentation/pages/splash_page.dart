import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_billing/core/routes/routes.dart';
import 'package:smart_billing/features/splash/presentation/manager/splash_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        context.read<SplashBloc>().add(const GetOwnCompanyEvent());
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<SplashBloc, SplashState>(
          listener: (context, state) {
            if (state is SplashLoaded) {
              Navigator.pushReplacementNamed(
                context,
                AppRoutes.loginPage,
              );
            } else {
              Navigator.pushReplacementNamed(
                context,
                AppRoutes.registerCompanyPage,
              );
            }
          },
          child: const FlutterLogo(
            size: 100,
          ),
        ),
      ),
    );
  }
}
