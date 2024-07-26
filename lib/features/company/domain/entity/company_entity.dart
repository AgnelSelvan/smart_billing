import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_entity.freezed.dart';

@freezed
class CompanyEntity with _$CompanyEntity {
  const factory CompanyEntity({
    required String id,
    required String name,
  }) = _CompanyEntity;
}
