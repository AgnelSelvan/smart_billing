import 'package:dartz/dartz.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/translation/domain/entity/translation_entity.dart';
import 'package:smart_billing/features/translation/domain/usecase/add_translation_usecase.dart';

abstract class TranslationRepository {
  Future<Either<Failure, TranslationEntity>> createTranslation(
      AddTranslationParams translationParams);
  Future<Either<Failure, TranslationEntity>> updateTranslation(
      AddTranslationParams translationParams);
}
