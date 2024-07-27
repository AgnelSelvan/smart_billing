import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/translation/domain/entity/translation_entity.dart';
import 'package:smart_billing/features/translation/domain/repository/translation_repository.dart';
import 'package:smart_billing/features/translation/domain/usecase/add_translation_usecase.dart';

@lazySingleton
class UpdateTranslationUseCase
    extends UseCase<TranslationEntity, AddTranslationParams> {
  final TranslationRepository repository;

  UpdateTranslationUseCase({required this.repository});

  @override
  Future<Either<Failure, TranslationEntity>> call(AddTranslationParams params) {
    return repository.updateTranslation(params);
  }
}
