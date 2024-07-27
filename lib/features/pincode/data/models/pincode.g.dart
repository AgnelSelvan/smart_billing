// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pincode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PincodeModelImpl _$$PincodeModelImplFromJson(Map<String, dynamic> json) =>
    _$PincodeModelImpl(
      message: json['Message'] as String?,
      status: json['Status'] as String?,
      postOffice: (json['PostOffice'] as List<dynamic>?)
              ?.map((e) => PostOfficeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PincodeModelImplToJson(_$PincodeModelImpl instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'Status': instance.status,
      'PostOffice': instance.postOffice,
    };

_$PostOfficeModelImpl _$$PostOfficeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostOfficeModelImpl(
      name: json['Name'] as String?,
      description: json['Description'] as String?,
      branchType: json['BranchType'] as String?,
      deliveryStatus: json['DeliveryStatus'] as String?,
      circle: json['Circle'] as String?,
      district: json['District'] as String?,
      division: json['Division'] as String?,
      region: json['Region'] as String?,
      block: json['Block'] as String?,
      state: json['State'] as String?,
      country: json['Country'] as String?,
      pincode: json['Pincode'] as String?,
    );

Map<String, dynamic> _$$PostOfficeModelImplToJson(
        _$PostOfficeModelImpl instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Description': instance.description,
      'BranchType': instance.branchType,
      'DeliveryStatus': instance.deliveryStatus,
      'Circle': instance.circle,
      'District': instance.district,
      'Division': instance.division,
      'Region': instance.region,
      'Block': instance.block,
      'State': instance.state,
      'Country': instance.country,
      'Pincode': instance.pincode,
    };
