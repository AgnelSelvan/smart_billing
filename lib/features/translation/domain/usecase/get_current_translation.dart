import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/translation/domain/entity/translation_entity.dart';
import 'package:smart_billing/features/translation/domain/repository/translation_repository.dart';

@lazySingleton
class GetCurrentTranslationUseCase {
  final TranslationRepository repository;

  GetCurrentTranslationUseCase({required this.repository});

  Either<Failure, TranslationEntity> call() {
    return repository.getCurrentTranslation();
  }
}
