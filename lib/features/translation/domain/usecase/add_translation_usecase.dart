import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/translation/domain/entity/translation_entity.dart';
import 'package:smart_billing/features/translation/domain/repository/translation_repository.dart';

@lazySingleton
class AddTranslationUseCase
    extends UseCase<TranslationEntity, AddTranslationParams> {
  final TranslationRepository repository;

  AddTranslationUseCase({required this.repository});

  @override
  Future<Either<Failure, TranslationEntity>> call(AddTranslationParams params) {
    return repository.createTranslation(params);
  }
}

class AddTranslationParams {
  final Locale locale;

  AddTranslationParams({required this.locale});
}
