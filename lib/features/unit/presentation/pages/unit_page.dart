import 'package:flutter/material.dart';
import 'package:smart_billing/core/utils/app/app_bloc_stateless.dart';

class UnitPage extends AppStatelessWidget {
  const UnitPage({super.key});

  @override
  bool get showTranslation => false;

  @override
  Widget buildView(BuildContext context) {
    return const Text('Unit Page');
  }
}
