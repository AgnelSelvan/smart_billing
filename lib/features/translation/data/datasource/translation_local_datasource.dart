import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/features/translation/data/models/translation_model.dart';
import 'package:smart_billing/features/translation/domain/entity/translation_entity.dart';

abstract class TranslationLocalDataSource {
  Future<TranslationEntity> addTranslation(TranslationModel translationModel);
  Future<TranslationEntity> updateTranslation(
      TranslationModel translationModel);
}

@LazySingleton(as: TranslationLocalDataSource)
class TranslationLocalDataSourceImpl extends TranslationLocalDataSource {
  final Box<TranslationModel> translationBox;

  TranslationLocalDataSourceImpl({required this.translationBox});

  @override
  Future<TranslationEntity> addTranslation(
      TranslationModel translationModel) async {
    await translationBox.add(translationModel);
    return translationModel.toEntity();
  }

  @override
  Future<TranslationEntity> updateTranslation(
      TranslationModel translationModel) async {
    await translationBox.putAt(0, translationModel);
    return translationModel.toEntity();
  }
}
