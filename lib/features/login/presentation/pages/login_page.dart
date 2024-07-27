import 'package:flutter/material.dart';
import 'package:smart_billing/core/utils/app/app_bloc_stateless.dart';

class LoginPage extends AppStatelessWidget {
  const LoginPage({super.key});

  @override
  Widget buildView(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Login Page'),
      ),
    );
  }
}
