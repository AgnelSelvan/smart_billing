part of 'translation_bloc.dart';

class TranslationState extends Equatable {
  final Locale selectedLocale;
  const TranslationState({
    this.selectedLocale = const Locale('en'),
  });

  @override
  List<Object> get props => [selectedLocale];
}
