import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_billing/features/user/data/models/user_model.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String name,
    String? email,
    required String password,
    required List<String> mobile,
    String? address,
    String? city,
    String? state,
    int? pincode,
    required UserRole role,
    required UserStatus status,
  }) = _UserEntity;
}
