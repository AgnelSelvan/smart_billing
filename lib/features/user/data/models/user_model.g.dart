// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserRoleAdapter extends TypeAdapter<UserRole> {
  @override
  final int typeId = 3;

  @override
  UserRole read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UserRole.owner;
      case 1:
        return UserRole.manager;
      case 2:
        return UserRole.user;
      case 3:
        return UserRole.employee;
      default:
        return UserRole.owner;
    }
  }

  @override
  void write(BinaryWriter writer, UserRole obj) {
    switch (obj) {
      case UserRole.owner:
        writer.writeByte(0);
        break;
      case UserRole.manager:
        writer.writeByte(1);
        break;
      case UserRole.user:
        writer.writeByte(2);
        break;
      case UserRole.employee:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserRoleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserStatusAdapter extends TypeAdapter<UserStatus> {
  @override
  final int typeId = 4;

  @override
  UserStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UserStatus.active;
      case 1:
        return UserStatus.inactive;
      default:
        return UserStatus.active;
    }
  }

  @override
  void write(BinaryWriter writer, UserStatus obj) {
    switch (obj) {
      case UserStatus.active:
        writer.writeByte(0);
        break;
      case UserStatus.inactive:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserModelAdapter extends TypeAdapter<_$UserModelImpl> {
  @override
  final int typeId = 5;

  @override
  _$UserModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserModelImpl(
      id: fields[0] as String,
      name: fields[1] as String,
      email: fields[2] as String?,
      password: fields[3] as String,
      mobile: (fields[4] as List).cast<String>(),
      address: fields[5] as String?,
      city: fields[6] as String?,
      state: fields[7] as String?,
      pincode: fields[8] as int?,
      createdAt: fields[10] as DateTime,
      updatedAt: fields[11] as DateTime,
      role: fields[12] as UserRole,
      status: fields[13] as UserStatus,
      bloodGroup: fields[14] as String?,
      emergencyMobileNo: fields[15] as String?,
      dob: fields[16] as DateTime?,
      employeeCode: fields[17] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$UserModelImpl obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.password)
      ..writeByte(4)
      ..write(obj.mobile)
      ..writeByte(5)
      ..write(obj.address)
      ..writeByte(6)
      ..write(obj.city)
      ..writeByte(7)
      ..write(obj.state)
      ..writeByte(8)
      ..write(obj.pincode)
      ..writeByte(10)
      ..write(obj.createdAt)
      ..writeByte(11)
      ..write(obj.updatedAt)
      ..writeByte(12)
      ..write(obj.role)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.bloodGroup)
      ..writeByte(15)
      ..write(obj.emergencyMobileNo)
      ..writeByte(16)
      ..write(obj.dob)
      ..writeByte(17)
      ..write(obj.employeeCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String?,
      password: json['password'] as String,
      mobile:
          (json['mobile'] as List<dynamic>).map((e) => e as String).toList(),
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      pincode: (json['pincode'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      status: $enumDecode(_$UserStatusEnumMap, json['status']),
      bloodGroup: json['bloodGroup'] as String?,
      emergencyMobileNo: json['emergencyMobileNo'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      employeeCode: json['employeeCode'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'mobile': instance.mobile,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'pincode': instance.pincode,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'role': _$UserRoleEnumMap[instance.role]!,
      'status': _$UserStatusEnumMap[instance.status]!,
      'bloodGroup': instance.bloodGroup,
      'emergencyMobileNo': instance.emergencyMobileNo,
      'dob': instance.dob?.toIso8601String(),
      'employeeCode': instance.employeeCode,
    };

const _$UserRoleEnumMap = {
  UserRole.owner: 'owner',
  UserRole.manager: 'manager',
  UserRole.user: 'user',
  UserRole.employee: 'employee',
};

const _$UserStatusEnumMap = {
  UserStatus.active: 'active',
  UserStatus.inactive: 'inactive',
};
