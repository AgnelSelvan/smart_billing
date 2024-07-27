import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:smart_billing/core/di/di.dart' as di;
import 'package:smart_billing/core/di/di.dart';
import 'package:smart_billing/core/routes/routes.dart';
import 'package:smart_billing/features/pincode/domain/usecases/pincode.dart';
import 'package:smart_billing/features/pincode/presentation/provider/pincode.dart';
import 'package:smart_billing/features/translation/presentation/manager/translation_bloc.dart';

void main() async {
  await di.configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TranslationBloc>(),
      child: ChangeNotifierProvider(
        create: (BuildContext context) =>
            PincodeProvider(getIt<GetPincodeDetailsUseCase>()),
        child: BlocBuilder<TranslationBloc, TranslationState>(
          builder: (context, state) {
            log('state: $state');
            return MaterialApp(
              title: 'Smart Billing',
              theme: ThemeData(
                colorScheme:
                    ColorScheme.fromSeed(seedColor: const Color(0xFFFFBB0D)),
                useMaterial3: true,
              ),
              locale: state.selectedLocale,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              onGenerateRoute: AppRoutes.onGenerateRoute,
              initialRoute: AppRoutes.splashPage,
            );
          },
        ),
      ),
    );
  }
}
