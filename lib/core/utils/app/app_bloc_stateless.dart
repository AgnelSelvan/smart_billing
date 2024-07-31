import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_billing/core/routes/routes.dart';
import 'package:smart_billing/features/translation/presentation/pages/translation_page.dart';

abstract class AppBlocStatelessWidget<B extends StateStreamable<S>, S>
    extends StatelessWidget {
  const AppBlocStatelessWidget({super.key, this.showTranslation = false});

  final bool showTranslation;

  B bloc(BuildContext context) => context.read<B>();

  void listener(BuildContext context, B bloc, S state) {}

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocConsumer<B, S>(
          builder: (context, state) {
            return buildView(context, bloc(context), state);
          },
          listener: (BuildContext context, S state) {
            listener(context, bloc(context), state);
          },
        ),
        if (showTranslation)
          const Align(
            alignment: Alignment.topRight,
            child: TranslationDropdownButton(),
          ),
        if (kDebugMode)
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.viewHivePage);
              },
              icon: const Icon(Icons.bug_report),
            ),
          )
      ],
    );
  }

  @protected
  Widget buildView(BuildContext context, B bloc, S state);
}

abstract class AppStatelessWidget extends StatelessWidget {
  const AppStatelessWidget({super.key, this.showTranslation = false});

  final bool showTranslation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildView(context),
        if (showTranslation)
          const Align(
            alignment: Alignment.topRight,
            child: TranslationDropdownButton(),
          ),
        if (kDebugMode)
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.viewHivePage);
              },
              icon: const Icon(Icons.bug_report),
            ),
          )
      ],
    );
  }

  @protected
  Widget buildView(BuildContext context);
}
