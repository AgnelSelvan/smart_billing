import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/translation/data/datasource/translation_local_datasource.dart';
import 'package:smart_billing/features/translation/data/models/translation_model.dart';
import 'package:smart_billing/features/translation/domain/entity/translation_entity.dart';
import 'package:smart_billing/features/translation/domain/repository/translation_repository.dart';
import 'package:smart_billing/features/translation/domain/usecase/add_translation_usecase.dart';

@LazySingleton(as: TranslationRepository)
class TranslationRepositoryImpl extends TranslationRepository {
  final TranslationLocalDataSource localDataSource;

  TranslationRepositoryImpl({
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, TranslationEntity>> createTranslation(
      AddTranslationParams translationParams) async {
    try {
      await localDataSource.addTranslation(
        TranslationModel(locale: translationParams.locale.languageCode),
      );
      return Right(
        TranslationEntity(locale: translationParams.locale.languageCode),
      );
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TranslationEntity>> updateTranslation(
      AddTranslationParams translationParams) async {
    try {
      await localDataSource.addTranslation(
        TranslationModel(locale: translationParams.locale.languageCode),
      );
      return Right(
        TranslationEntity(locale: translationParams.locale.languageCode),
      );
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Either<Failure, TranslationEntity> getCurrentTranslation() {
    try {
      final translation = localDataSource.getCurrentTranslation();
      if (translation == null) {
        return Right(TranslationEntity(locale: 'en'));
      }
      return Right(translation);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
