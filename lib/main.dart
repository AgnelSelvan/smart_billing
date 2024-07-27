import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_billing/core/di/di.dart' as di;
import 'package:smart_billing/core/di/di.dart';
import 'package:smart_billing/core/routes/routes.dart';
import 'package:smart_billing/features/pincode/domain/usecases/pincode.dart';
import 'package:smart_billing/features/pincode/presentation/provider/pincode.dart';

void main() async {
  await di.configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) =>
          PincodeProvider(getIt<GetPincodeDetailsUseCase>()),
      child: MaterialApp(
        title: 'Smart Billing',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        initialRoute: AppRoutes.splashPage,
      ),
    );
  }
}
