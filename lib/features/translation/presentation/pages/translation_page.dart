import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_billing/core/extension/context.dart';
import 'package:smart_billing/core/extension/locale.dart';
import 'package:smart_billing/features/translation/domain/usecase/add_translation_usecase.dart';
import 'package:smart_billing/features/translation/presentation/manager/translation_bloc.dart';

class TranslationDropdownButton extends StatelessWidget {
  const TranslationDropdownButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.translate),
      itemBuilder: (context) {
        return context.supportedLocales
            .map(
              (e) => PopupMenuItem(
                child: ListTile(
                  title: Text(e.toLanguage()),
                  onTap: () {
                    context.read<TranslationBloc>().add(
                          UpdateTranslationEvent(
                            params: AddTranslationParams(
                              locale: e,
                            ),
                          ),
                        );
                  },
                ),
              ),
            )
            .toList();
      },
    );
  }
}
