import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smart_billing/core/utils/encrypt/encrypt_decrypt.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';
import 'package:uuid/uuid.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@HiveType(typeId: 3)
enum UserRole {
  @HiveField(0)
  owner,
  @HiveField(1)
  manager,
  @HiveField(2)
  user,
  @HiveField(3)
  employee;

  @override
  String toString() {
    return name;
  }
}

@HiveType(typeId: 4)
enum UserStatus {
  @HiveField(0)
  active,
  @HiveField(1)
  inactive;

  @override
  String toString() {
    return name;
  }
}

@unfreezed
class UserModel extends HiveObject with _$UserModel {
  @HiveType(typeId: 5, adapterName: 'UserModelAdapter')
  factory UserModel({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) String? email,
    @HiveField(3) required String password,
    @HiveField(4) required List<String> mobile,
    @HiveField(5) String? address,
    @HiveField(6) String? city,
    @HiveField(7) String? state,
    @HiveField(8) int? pincode,
    @HiveField(10) required DateTime createdAt,
    @HiveField(11) required DateTime updatedAt,
    @HiveField(12) required UserRole role,
    @HiveField(13) required UserStatus status,
    @HiveField(14) String? bloodGroup,
    @HiveField(15) String? emergencyMobileNo,
    @HiveField(16) DateTime? dob,
    @HiveField(17) required String employeeCode,
  }) = _UserModel;

  UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromAddEmployeeForm({
    Map<String, dynamic>? json,
    Map<String, dynamic>? pincode,
  }) {
    return UserModel(
      id: const Uuid().v4(),
      name: json?['name'],
      email: json?['email'],
      password: EncryptDecryptManager.encrypt(json?['password'] ?? ''),
      mobile: json?['mobileNo'] == null ? [] : [json?['mobileNo']],
      address: json?['address'],
      city: pincode?['city'],
      state: pincode?['state'],
      pincode: int.tryParse((pincode?['pincode'] ?? '').toString()) ?? 0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      role: json?['role'],
      status: UserStatus.active,
      bloodGroup: json?['bloodGroup'],
      emergencyMobileNo: json?['emergencyMobileNo'],
      dob: json?['dob'],
      employeeCode: json?['employeeCode'],
    );
  }
}

extension Helper on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      employeeCode: employeeCode,
      id: id,
      name: name,
      email: email,
      password: password,
      mobile: mobile,
      address: address,
      city: city,
      state: state,
      pincode: pincode,
      role: role,
      status: status,
      bloodGroup: bloodGroup,
      dob: dob,
      emergencyContact: emergencyMobileNo,
    );
  }
}
