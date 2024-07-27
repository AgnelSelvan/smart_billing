// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompanyTypeAdapter extends TypeAdapter<CompanyType> {
  @override
  final int typeId = 1;

  @override
  CompanyType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return CompanyType.own;
      case 1:
        return CompanyType.buyer;
      case 2:
        return CompanyType.seller;
      default:
        return CompanyType.own;
    }
  }

  @override
  void write(BinaryWriter writer, CompanyType obj) {
    switch (obj) {
      case CompanyType.own:
        writer.writeByte(0);
        break;
      case CompanyType.buyer:
        writer.writeByte(1);
        break;
      case CompanyType.seller:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompanyTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CompanyModelAdapter extends TypeAdapter<_$CompanyModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$CompanyModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CompanyModelImpl(
      id: fields[0] as String,
      name: fields[1] as String,
      address: fields[2] as String?,
      email: fields[3] as String?,
      website: fields[4] as String?,
      licNO: fields[5] as String?,
      placeOfDispatch: fields[6] as String?,
      pan: fields[7] as String?,
      pincode: fields[8] as int?,
      state: fields[9] as String?,
      city: fields[10] as String?,
      mobileNoList: (fields[11] as List).cast<String>(),
      gstin: fields[12] as String?,
      bankIds: (fields[13] as List).cast<String>(),
      createdAt: fields[14] as DateTime,
      companyType: fields[15] as CompanyType,
      updatedAt: fields[16] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$CompanyModelImpl obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.address)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.website)
      ..writeByte(5)
      ..write(obj.licNO)
      ..writeByte(6)
      ..write(obj.placeOfDispatch)
      ..writeByte(7)
      ..write(obj.pan)
      ..writeByte(8)
      ..write(obj.pincode)
      ..writeByte(9)
      ..write(obj.state)
      ..writeByte(10)
      ..write(obj.city)
      ..writeByte(11)
      ..write(obj.mobileNoList)
      ..writeByte(12)
      ..write(obj.gstin)
      ..writeByte(13)
      ..write(obj.bankIds)
      ..writeByte(14)
      ..write(obj.createdAt)
      ..writeByte(15)
      ..write(obj.companyType)
      ..writeByte(16)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompanyModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyModelImpl _$$CompanyModelImplFromJson(Map<String, dynamic> json) =>
    _$CompanyModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      licNO: json['licNO'] as String?,
      placeOfDispatch: json['placeOfDispatch'] as String?,
      pan: json['pan'] as String?,
      pincode: (json['pincode'] as num?)?.toInt(),
      state: json['state'] as String?,
      city: json['city'] as String?,
      mobileNoList: (json['mobileNoList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      gstin: json['gstin'] as String?,
      bankIds: (json['bankIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      createdAt: DateTime.parse(json['createdAt'] as String),
      companyType: $enumDecode(_$CompanyTypeEnumMap, json['companyType']),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CompanyModelImplToJson(_$CompanyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'email': instance.email,
      'website': instance.website,
      'licNO': instance.licNO,
      'placeOfDispatch': instance.placeOfDispatch,
      'pan': instance.pan,
      'pincode': instance.pincode,
      'state': instance.state,
      'city': instance.city,
      'mobileNoList': instance.mobileNoList,
      'gstin': instance.gstin,
      'bankIds': instance.bankIds,
      'createdAt': instance.createdAt.toIso8601String(),
      'companyType': _$CompanyTypeEnumMap[instance.companyType]!,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$CompanyTypeEnumMap = {
  CompanyType.own: 'own',
  CompanyType.buyer: 'buyer',
  CompanyType.seller: 'seller',
};
