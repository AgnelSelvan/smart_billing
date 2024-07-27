import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_billing/core/routes/routes.dart';

abstract class AppBlocStatelessWidget<B extends StateStreamable<S>, S>
    extends StatelessWidget {
  const AppBlocStatelessWidget({super.key});

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
  const AppStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildView(context),
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
