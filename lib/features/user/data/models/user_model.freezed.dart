// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(0)
  set id(String value) => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  set name(String value) => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(2)
  set email(String? value) => throw _privateConstructorUsedError;
  @HiveField(3)
  String get password => throw _privateConstructorUsedError;
  @HiveField(3)
  set password(String value) => throw _privateConstructorUsedError;
  @HiveField(4)
  List<String> get mobile => throw _privateConstructorUsedError;
  @HiveField(4)
  set mobile(List<String> value) => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get address => throw _privateConstructorUsedError;
  @HiveField(5)
  set address(String? value) => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get city => throw _privateConstructorUsedError;
  @HiveField(6)
  set city(String? value) => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get state => throw _privateConstructorUsedError;
  @HiveField(7)
  set state(String? value) => throw _privateConstructorUsedError;
  @HiveField(8)
  int? get pincode => throw _privateConstructorUsedError;
  @HiveField(8)
  set pincode(int? value) => throw _privateConstructorUsedError;
  @HiveField(10)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @HiveField(10)
  set createdAt(DateTime value) => throw _privateConstructorUsedError;
  @HiveField(11)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @HiveField(11)
  set updatedAt(DateTime value) => throw _privateConstructorUsedError;
  @HiveField(12)
  UserRole get role => throw _privateConstructorUsedError;
  @HiveField(12)
  set role(UserRole value) => throw _privateConstructorUsedError;
  @HiveField(13)
  UserStatus get status => throw _privateConstructorUsedError;
  @HiveField(13)
  set status(UserStatus value) => throw _privateConstructorUsedError;
  @HiveField(14)
  String? get bloodGroup => throw _privateConstructorUsedError;
  @HiveField(14)
  set bloodGroup(String? value) => throw _privateConstructorUsedError;
  @HiveField(15)
  String? get emergencyMobileNo => throw _privateConstructorUsedError;
  @HiveField(15)
  set emergencyMobileNo(String? value) => throw _privateConstructorUsedError;
  @HiveField(16)
  DateTime? get dob => throw _privateConstructorUsedError;
  @HiveField(16)
  set dob(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(17)
  String get employeeCode => throw _privateConstructorUsedError;
  @HiveField(17)
  set employeeCode(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String? email,
      @HiveField(3) String password,
      @HiveField(4) List<String> mobile,
      @HiveField(5) String? address,
      @HiveField(6) String? city,
      @HiveField(7) String? state,
      @HiveField(8) int? pincode,
      @HiveField(10) DateTime createdAt,
      @HiveField(11) DateTime updatedAt,
      @HiveField(12) UserRole role,
      @HiveField(13) UserStatus status,
      @HiveField(14) String? bloodGroup,
      @HiveField(15) String? emergencyMobileNo,
      @HiveField(16) DateTime? dob,
      @HiveField(17) String employeeCode});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = freezed,
    Object? password = null,
    Object? mobile = null,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? role = null,
    Object? status = null,
    Object? bloodGroup = freezed,
    Object? emergencyMobileNo = freezed,
    Object? dob = freezed,
    Object? employeeCode = null,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as List<String>,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      bloodGroup: freezed == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyMobileNo: freezed == emergencyMobileNo
          ? _value.emergencyMobileNo
          : emergencyMobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      employeeCode: null == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String? email,
      @HiveField(3) String password,
      @HiveField(4) List<String> mobile,
      @HiveField(5) String? address,
      @HiveField(6) String? city,
      @HiveField(7) String? state,
      @HiveField(8) int? pincode,
      @HiveField(10) DateTime createdAt,
      @HiveField(11) DateTime updatedAt,
      @HiveField(12) UserRole role,
      @HiveField(13) UserStatus status,
      @HiveField(14) String? bloodGroup,
      @HiveField(15) String? emergencyMobileNo,
      @HiveField(16) DateTime? dob,
      @HiveField(17) String employeeCode});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = freezed,
    Object? password = null,
    Object? mobile = null,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? role = null,
    Object? status = null,
    Object? bloodGroup = freezed,
    Object? emergencyMobileNo = freezed,
    Object? dob = freezed,
    Object? employeeCode = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as List<String>,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      bloodGroup: freezed == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      emergencyMobileNo: freezed == emergencyMobileNo
          ? _value.emergencyMobileNo
          : emergencyMobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      employeeCode: null == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 5, adapterName: 'UserModelAdapter')
class _$UserModelImpl extends _UserModel {
  _$UserModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) this.email,
      @HiveField(3) required this.password,
      @HiveField(4) required this.mobile,
      @HiveField(5) this.address,
      @HiveField(6) this.city,
      @HiveField(7) this.state,
      @HiveField(8) this.pincode,
      @HiveField(10) required this.createdAt,
      @HiveField(11) required this.updatedAt,
      @HiveField(12) required this.role,
      @HiveField(13) required this.status,
      @HiveField(14) this.bloodGroup,
      @HiveField(15) this.emergencyMobileNo,
      @HiveField(16) this.dob,
      @HiveField(17) required this.employeeCode})
      : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @HiveField(0)
  String id;
  @override
  @HiveField(1)
  String name;
  @override
  @HiveField(2)
  String? email;
  @override
  @HiveField(3)
  String password;
  @override
  @HiveField(4)
  List<String> mobile;
  @override
  @HiveField(5)
  String? address;
  @override
  @HiveField(6)
  String? city;
  @override
  @HiveField(7)
  String? state;
  @override
  @HiveField(8)
  int? pincode;
  @override
  @HiveField(10)
  DateTime createdAt;
  @override
  @HiveField(11)
  DateTime updatedAt;
  @override
  @HiveField(12)
  UserRole role;
  @override
  @HiveField(13)
  UserStatus status;
  @override
  @HiveField(14)
  String? bloodGroup;
  @override
  @HiveField(15)
  String? emergencyMobileNo;
  @override
  @HiveField(16)
  DateTime? dob;
  @override
  @HiveField(17)
  String employeeCode;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, password: $password, mobile: $mobile, address: $address, city: $city, state: $state, pincode: $pincode, createdAt: $createdAt, updatedAt: $updatedAt, role: $role, status: $status, bloodGroup: $bloodGroup, emergencyMobileNo: $emergencyMobileNo, dob: $dob, employeeCode: $employeeCode)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  factory _UserModel(
      {@HiveField(0) required String id,
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
      @HiveField(17) required String employeeCode}) = _$UserModelImpl;
  _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

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
  String? get email;
  @HiveField(2)
  set email(String? value);
  @override
  @HiveField(3)
  String get password;
  @HiveField(3)
  set password(String value);
  @override
  @HiveField(4)
  List<String> get mobile;
  @HiveField(4)
  set mobile(List<String> value);
  @override
  @HiveField(5)
  String? get address;
  @HiveField(5)
  set address(String? value);
  @override
  @HiveField(6)
  String? get city;
  @HiveField(6)
  set city(String? value);
  @override
  @HiveField(7)
  String? get state;
  @HiveField(7)
  set state(String? value);
  @override
  @HiveField(8)
  int? get pincode;
  @HiveField(8)
  set pincode(int? value);
  @override
  @HiveField(10)
  DateTime get createdAt;
  @HiveField(10)
  set createdAt(DateTime value);
  @override
  @HiveField(11)
  DateTime get updatedAt;
  @HiveField(11)
  set updatedAt(DateTime value);
  @override
  @HiveField(12)
  UserRole get role;
  @HiveField(12)
  set role(UserRole value);
  @override
  @HiveField(13)
  UserStatus get status;
  @HiveField(13)
  set status(UserStatus value);
  @override
  @HiveField(14)
  String? get bloodGroup;
  @HiveField(14)
  set bloodGroup(String? value);
  @override
  @HiveField(15)
  String? get emergencyMobileNo;
  @HiveField(15)
  set emergencyMobileNo(String? value);
  @override
  @HiveField(16)
  DateTime? get dob;
  @HiveField(16)
  set dob(DateTime? value);
  @override
  @HiveField(17)
  String get employeeCode;
  @HiveField(17)
  set employeeCode(String value);
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
