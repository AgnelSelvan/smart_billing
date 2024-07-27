import 'package:flutter/material.dart';

class TranslationEntity {
  final String locale;

  TranslationEntity({required this.locale});

  Locale get toLocale => Locale(locale);
}
