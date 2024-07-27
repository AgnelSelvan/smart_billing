import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_billing/features/pincode/domain/entities/post_office.dart';

part 'pincode.freezed.dart';
part 'pincode.g.dart';

@freezed
class PincodeModel with _$PincodeModel {
  factory PincodeModel({
    @JsonKey(name: 'Message') String? message,
    @JsonKey(name: 'Status') String? status,
    @JsonKey(name: 'PostOffice') @Default([]) List<PostOfficeModel> postOffice,
  }) = _PincodeModel;

  factory PincodeModel.fromJson(Map<String, dynamic> json) =>
      _$PincodeModelFromJson(json);
}

@freezed
class PostOfficeModel with _$PostOfficeModel {
  const factory PostOfficeModel({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'BranchType') String? branchType,
    @JsonKey(name: 'DeliveryStatus') String? deliveryStatus,
    @JsonKey(name: 'Circle') String? circle,
    @JsonKey(name: 'District') String? district,
    @JsonKey(name: 'Division') String? division,
    @JsonKey(name: 'Region') String? region,
    @JsonKey(name: 'Block') String? block,
    @JsonKey(name: 'State') String? state,
    @JsonKey(name: 'Country') String? country,
    @JsonKey(name: 'Pincode') String? pincode,
  }) = _PostOfficeModel;

  factory PostOfficeModel.fromJson(Map<String, dynamic> json) =>
      _$PostOfficeModelFromJson(json);
}

extension Helper on PostOfficeModel {
  PostOfficeEntity toEntity() {
    return PostOfficeEntity(
      name: name,
      description: description,
      branchType: branchType,
      deliveryStatus: deliveryStatus,
      circle: circle,
      district: district,
      division: division,
      region: region,
      block: block,
      state: state,
      country: country,
      pincode: pincode,
    );
  }
}
