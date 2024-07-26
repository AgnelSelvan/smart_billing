// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) {
  return _CompanyModel.fromJson(json);
}

/// @nodoc
mixin _$CompanyModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(0)
  set id(String value) => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  set name(String value) => throw _privateConstructorUsedError;
  @HiveField(2)
  String get address => throw _privateConstructorUsedError;
  @HiveField(2)
  set address(String value) => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(3)
  set email(String? value) => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get website => throw _privateConstructorUsedError;
  @HiveField(4)
  set website(String? value) => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get licNO => throw _privateConstructorUsedError;
  @HiveField(5)
  set licNO(String? value) => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get placeOfDispatch => throw _privateConstructorUsedError;
  @HiveField(6)
  set placeOfDispatch(String? value) => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get pan => throw _privateConstructorUsedError;
  @HiveField(7)
  set pan(String? value) => throw _privateConstructorUsedError;
  @HiveField(8)
  int? get pincode => throw _privateConstructorUsedError;
  @HiveField(8)
  set pincode(int? value) => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get state => throw _privateConstructorUsedError;
  @HiveField(9)
  set state(String? value) => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get city => throw _privateConstructorUsedError;
  @HiveField(10)
  set city(String? value) => throw _privateConstructorUsedError;
  @HiveField(11)
  List<String> get mobileNoList => throw _privateConstructorUsedError;
  @HiveField(11)
  set mobileNoList(List<String> value) => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get gstin => throw _privateConstructorUsedError;
  @HiveField(12)
  set gstin(String? value) => throw _privateConstructorUsedError;
  @HiveField(13)
  List<String> get bankIds => throw _privateConstructorUsedError;
  @HiveField(13)
  set bankIds(List<String> value) => throw _privateConstructorUsedError;
  @HiveField(14)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @HiveField(14)
  set createdAt(DateTime value) => throw _privateConstructorUsedError;
  @HiveField(15)
  CompanyType get companyType => throw _privateConstructorUsedError;
  @HiveField(15)
  set companyType(CompanyType value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyModelCopyWith<CompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyModelCopyWith<$Res> {
  factory $CompanyModelCopyWith(
          CompanyModel value, $Res Function(CompanyModel) then) =
      _$CompanyModelCopyWithImpl<$Res, CompanyModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String address,
      @HiveField(3) String? email,
      @HiveField(4) String? website,
      @HiveField(5) String? licNO,
      @HiveField(6) String? placeOfDispatch,
      @HiveField(7) String? pan,
      @HiveField(8) int? pincode,
      @HiveField(9) String? state,
      @HiveField(10) String? city,
      @HiveField(11) List<String> mobileNoList,
      @HiveField(12) String? gstin,
      @HiveField(13) List<String> bankIds,
      @HiveField(14) DateTime createdAt,
      @HiveField(15) CompanyType companyType});
}

/// @nodoc
class _$CompanyModelCopyWithImpl<$Res, $Val extends CompanyModel>
    implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? email = freezed,
    Object? website = freezed,
    Object? licNO = freezed,
    Object? placeOfDispatch = freezed,
    Object? pan = freezed,
    Object? pincode = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? mobileNoList = null,
    Object? gstin = freezed,
    Object? bankIds = null,
    Object? createdAt = null,
    Object? companyType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      licNO: freezed == licNO
          ? _value.licNO
          : licNO // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfDispatch: freezed == placeOfDispatch
          ? _value.placeOfDispatch
          : placeOfDispatch // ignore: cast_nullable_to_non_nullable
              as String?,
      pan: freezed == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNoList: null == mobileNoList
          ? _value.mobileNoList
          : mobileNoList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as String?,
      bankIds: null == bankIds
          ? _value.bankIds
          : bankIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      companyType: null == companyType
          ? _value.companyType
          : companyType // ignore: cast_nullable_to_non_nullable
              as CompanyType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyModelImplCopyWith<$Res>
    implements $CompanyModelCopyWith<$Res> {
  factory _$$CompanyModelImplCopyWith(
          _$CompanyModelImpl value, $Res Function(_$CompanyModelImpl) then) =
      __$$CompanyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String address,
      @HiveField(3) String? email,
      @HiveField(4) String? website,
      @HiveField(5) String? licNO,
      @HiveField(6) String? placeOfDispatch,
      @HiveField(7) String? pan,
      @HiveField(8) int? pincode,
      @HiveField(9) String? state,
      @HiveField(10) String? city,
      @HiveField(11) List<String> mobileNoList,
      @HiveField(12) String? gstin,
      @HiveField(13) List<String> bankIds,
      @HiveField(14) DateTime createdAt,
      @HiveField(15) CompanyType companyType});
}

/// @nodoc
class __$$CompanyModelImplCopyWithImpl<$Res>
    extends _$CompanyModelCopyWithImpl<$Res, _$CompanyModelImpl>
    implements _$$CompanyModelImplCopyWith<$Res> {
  __$$CompanyModelImplCopyWithImpl(
      _$CompanyModelImpl _value, $Res Function(_$CompanyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? email = freezed,
    Object? website = freezed,
    Object? licNO = freezed,
    Object? placeOfDispatch = freezed,
    Object? pan = freezed,
    Object? pincode = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? mobileNoList = null,
    Object? gstin = freezed,
    Object? bankIds = null,
    Object? createdAt = null,
    Object? companyType = null,
  }) {
    return _then(_$CompanyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      licNO: freezed == licNO
          ? _value.licNO
          : licNO // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfDispatch: freezed == placeOfDispatch
          ? _value.placeOfDispatch
          : placeOfDispatch // ignore: cast_nullable_to_non_nullable
              as String?,
      pan: freezed == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNoList: null == mobileNoList
          ? _value.mobileNoList
          : mobileNoList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as String?,
      bankIds: null == bankIds
          ? _value.bankIds
          : bankIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      companyType: null == companyType
          ? _value.companyType
          : companyType // ignore: cast_nullable_to_non_nullable
              as CompanyType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: "CompanyModelAdapter")
class _$CompanyModelImpl extends _CompanyModel {
  _$CompanyModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.address,
      @HiveField(3) this.email,
      @HiveField(4) this.website,
      @HiveField(5) this.licNO,
      @HiveField(6) this.placeOfDispatch,
      @HiveField(7) this.pan,
      @HiveField(8) this.pincode,
      @HiveField(9) this.state,
      @HiveField(10) this.city,
      @HiveField(11) this.mobileNoList = const <String>[],
      @HiveField(12) this.gstin,
      @HiveField(13) this.bankIds = const <String>[],
      @HiveField(14) required this.createdAt,
      @HiveField(15) this.companyType = CompanyType.own})
      : super._();

  factory _$CompanyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyModelImplFromJson(json);

  @override
  @HiveField(0)
  String id;
  @override
  @HiveField(1)
  String name;
  @override
  @HiveField(2)
  String address;
  @override
  @HiveField(3)
  String? email;
  @override
  @HiveField(4)
  String? website;
  @override
  @HiveField(5)
  String? licNO;
  @override
  @HiveField(6)
  String? placeOfDispatch;
  @override
  @HiveField(7)
  String? pan;
  @override
  @HiveField(8)
  int? pincode;
  @override
  @HiveField(9)
  String? state;
  @override
  @HiveField(10)
  String? city;
  @override
  @JsonKey()
  @HiveField(11)
  List<String> mobileNoList;
  @override
  @HiveField(12)
  String? gstin;
  @override
  @JsonKey()
  @HiveField(13)
  List<String> bankIds;
  @override
  @HiveField(14)
  DateTime createdAt;
  @override
  @JsonKey()
  @HiveField(15)
  CompanyType companyType;

  @override
  String toString() {
    return 'CompanyModel(id: $id, name: $name, address: $address, email: $email, website: $website, licNO: $licNO, placeOfDispatch: $placeOfDispatch, pan: $pan, pincode: $pincode, state: $state, city: $city, mobileNoList: $mobileNoList, gstin: $gstin, bankIds: $bankIds, createdAt: $createdAt, companyType: $companyType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyModelImplCopyWith<_$CompanyModelImpl> get copyWith =>
      __$$CompanyModelImplCopyWithImpl<_$CompanyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyModelImplToJson(
      this,
    );
  }
}

abstract class _CompanyModel extends CompanyModel {
  factory _CompanyModel(
      {@HiveField(0) required String id,
      @HiveField(1) required String name,
      @HiveField(2) required String address,
      @HiveField(3) String? email,
      @HiveField(4) String? website,
      @HiveField(5) String? licNO,
      @HiveField(6) String? placeOfDispatch,
      @HiveField(7) String? pan,
      @HiveField(8) int? pincode,
      @HiveField(9) String? state,
      @HiveField(10) String? city,
      @HiveField(11) List<String> mobileNoList,
      @HiveField(12) String? gstin,
      @HiveField(13) List<String> bankIds,
      @HiveField(14) required DateTime createdAt,
      @HiveField(15) CompanyType companyType}) = _$CompanyModelImpl;
  _CompanyModel._() : super._();

  factory _CompanyModel.fromJson(Map<String, dynamic> json) =
      _$CompanyModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @HiveField(0)
  set id(String value);
  @override
  @HiveField(1)
  String get name;
  @HiveField(1)
  set name(String value);
  @override
  @HiveField(2)
  String get address;
  @HiveField(2)
  set address(String value);
  @override
  @HiveField(3)
  String? get email;
  @HiveField(3)
  set email(String? value);
  @override
  @HiveField(4)
  String? get website;
  @HiveField(4)
  set website(String? value);
  @override
  @HiveField(5)
  String? get licNO;
  @HiveField(5)
  set licNO(String? value);
  @override
  @HiveField(6)
  String? get placeOfDispatch;
  @HiveField(6)
  set placeOfDispatch(String? value);
  @override
  @HiveField(7)
  String? get pan;
  @HiveField(7)
  set pan(String? value);
  @override
  @HiveField(8)
  int? get pincode;
  @HiveField(8)
  set pincode(int? value);
  @override
  @HiveField(9)
  String? get state;
  @HiveField(9)
  set state(String? value);
  @override
  @HiveField(10)
  String? get city;
  @HiveField(10)
  set city(String? value);
  @override
  @HiveField(11)
  List<String> get mobileNoList;
  @HiveField(11)
  set mobileNoList(List<String> value);
  @override
  @HiveField(12)
  String? get gstin;
  @HiveField(12)
  set gstin(String? value);
  @override
  @HiveField(13)
  List<String> get bankIds;
  @HiveField(13)
  set bankIds(List<String> value);
  @override
  @HiveField(14)
  DateTime get createdAt;
  @HiveField(14)
  set createdAt(DateTime value);
  @override
  @HiveField(15)
  CompanyType get companyType;
  @HiveField(15)
  set companyType(CompanyType value);
  @override
  @JsonKey(ignore: true)
  _$$CompanyModelImplCopyWith<_$CompanyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
