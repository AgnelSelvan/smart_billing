import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/features/translation/domain/usecase/add_translation_usecase.dart';
import 'package:smart_billing/features/translation/domain/usecase/get_current_translation.dart';
import 'package:smart_billing/features/translation/domain/usecase/update_translation_usecase.dart';

part 'translation_event.dart';
part 'translation_state.dart';

@injectable
class TranslationBloc extends Bloc<TranslationEvent, TranslationState> {
  final AddTranslationUseCase addTranslationUseCase;
  final UpdateTranslationUseCase updateTranslationUseCase;
  final GetCurrentTranslationUseCase getCurrentTranslationUseCase;

  TranslationBloc(
    this.addTranslationUseCase,
    this.updateTranslationUseCase,
    this.getCurrentTranslationUseCase,
  ) : super(const TranslationState()) {
    on<AddTranslationEvent>((event, emit) async {
      final response = await addTranslationUseCase.call(event.params);
      response.fold(
        (l) {},
        (r) {
          emit(TranslationState(selectedLocale: Locale(r.locale)));
        },
      );
    });

    on<UpdateTranslationEvent>((event, emit) async {
      final response = await updateTranslationUseCase.call(event.params);
      response.fold(
        (l) {
          add(AddTranslationEvent(params: event.params));
        },
        (r) {
          emit(TranslationState(selectedLocale: Locale(r.locale)));
        },
      );
    });

    on<GetCurrentTranslationEvent>((event, emit) {
      final response = getCurrentTranslationUseCase.call();
      response.fold(
        (l) {
          emit(const TranslationState());
        },
        (r) {
          emit(TranslationState(selectedLocale: Locale(r.locale)));
        },
      );
    });
  }
}
