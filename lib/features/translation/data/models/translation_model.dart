import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:smart_billing/features/translation/domain/entity/translation_entity.dart';

part 'translation_model.freezed.dart';
part 'translation_model.g.dart';

@unfreezed
class TranslationModel extends HiveObject with _$TranslationModel {
  @HiveType(typeId: 6, adapterName: 'TranslationModelAdapter')
  factory TranslationModel({
    @HiveField(0) required String locale,
  }) = _TranslationModel;

  TranslationModel._();
}

extension Helper on TranslationModel {
  TranslationEntity toEntity() {
    return TranslationEntity(locale: locale);
  }
}
