part of 'translation_bloc.dart';

class TranslationEvent extends Equatable {
  const TranslationEvent();

  @override
  List<Object> get props => [];
}

class AddTranslationEvent extends TranslationEvent {
  final AddTranslationParams params;

  const AddTranslationEvent({required this.params});
}

class GetCurrentTranslationEvent extends TranslationEvent {
  const GetCurrentTranslationEvent();
}

class UpdateTranslationEvent extends TranslationEvent {
  final AddTranslationParams params;

  const UpdateTranslationEvent({required this.params});
}
