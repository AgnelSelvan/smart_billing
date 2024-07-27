import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@HiveType(typeId: 1)
enum CompanyType {
  @HiveField(0)
  own,
  @HiveField(1)
  buyer,
  @HiveField(2)
  seller;
}

@unfreezed
class CompanyModel extends HiveObject with _$CompanyModel {
  @HiveType(typeId: 0, adapterName: 'CompanyModelAdapter')
  factory CompanyModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) String? address,
    @HiveField(3) String? email,
    @HiveField(4) String? website,
    @HiveField(5) String? licNO,
    @HiveField(6) String? placeOfDispatch,
    @HiveField(7) String? pan,
    @HiveField(8) int? pincode,
    @HiveField(9) String? state,
    @HiveField(10) String? city,
    @HiveField(11) @Default(<String>[]) List<String> mobileNoList,
    @HiveField(12) String? gstin,
    @HiveField(13) @Default(<String>[]) List<String> bankIds,
    @HiveField(14) required DateTime createdAt,
    @HiveField(15) required CompanyType companyType,
    @HiveField(16) required DateTime updatedAt,
  }) = _CompanyModel;

  CompanyModel._();

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}
