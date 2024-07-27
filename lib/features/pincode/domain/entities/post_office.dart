import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_office.freezed.dart';

@freezed
class PostOfficeEntity with _$PostOfficeEntity {
  const factory PostOfficeEntity({
    String? name,
    String? description,
    String? branchType,
    String? deliveryStatus,
    String? circle,
    String? district,
    String? division,
    String? region,
    String? block,
    String? state,
    String? country,
    String? pincode,
  }) = _PostOfficeEntity;
}
