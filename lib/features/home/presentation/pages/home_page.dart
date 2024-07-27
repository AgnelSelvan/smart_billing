import 'package:flutter/material.dart';
import 'package:smart_billing/core/utils/app/app_bloc_stateless.dart';

class HomePage extends AppStatelessWidget {
  const HomePage({super.key});

  @override
  Widget buildView(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
