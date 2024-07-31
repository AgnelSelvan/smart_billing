// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_user_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddUserParams {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  List<String> get mobile => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  int? get pincode => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  UserRole get role => throw _privateConstructorUsedError;
  UserStatus get status => throw _privateConstructorUsedError;
  String? get bloodGroup => throw _privateConstructorUsedError;
  String? get emergencyMobileNo => throw _privateConstructorUsedError;
  DateTime? get dob => throw _privateConstructorUsedError;
  String get employeeCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUserParamsCopyWith<AddUserParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserParamsCopyWith<$Res> {
  factory $AddUserParamsCopyWith(
          AddUserParams value, $Res Function(AddUserParams) then) =
      _$AddUserParamsCopyWithImpl<$Res, AddUserParams>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? email,
      String password,
      List<String> mobile,
      String? address,
      String? city,
      String? state,
      int? pincode,
      DateTime createdAt,
      UserRole role,
      UserStatus status,
      String? bloodGroup,
      String? emergencyMobileNo,
      DateTime? dob,
      String employeeCode});
}

/// @nodoc
class _$AddUserParamsCopyWithImpl<$Res, $Val extends AddUserParams>
    implements $AddUserParamsCopyWith<$Res> {
  _$AddUserParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$AddUserParamsImplCopyWith<$Res>
    implements $AddUserParamsCopyWith<$Res> {
  factory _$$AddUserParamsImplCopyWith(
          _$AddUserParamsImpl value, $Res Function(_$AddUserParamsImpl) then) =
      __$$AddUserParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? email,
      String password,
      List<String> mobile,
      String? address,
      String? city,
      String? state,
      int? pincode,
      DateTime createdAt,
      UserRole role,
      UserStatus status,
      String? bloodGroup,
      String? emergencyMobileNo,
      DateTime? dob,
      String employeeCode});
}

/// @nodoc
class __$$AddUserParamsImplCopyWithImpl<$Res>
    extends _$AddUserParamsCopyWithImpl<$Res, _$AddUserParamsImpl>
    implements _$$AddUserParamsImplCopyWith<$Res> {
  __$$AddUserParamsImplCopyWithImpl(
      _$AddUserParamsImpl _value, $Res Function(_$AddUserParamsImpl) _then)
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
    Object? role = null,
    Object? status = null,
    Object? bloodGroup = freezed,
    Object? emergencyMobileNo = freezed,
    Object? dob = freezed,
    Object? employeeCode = null,
  }) {
    return _then(_$AddUserParamsImpl(
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
          ? _value._mobile
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

class _$AddUserParamsImpl implements _AddUserParams {
  const _$AddUserParamsImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.password,
      required final List<String> mobile,
      required this.address,
      required this.city,
      required this.state,
      required this.pincode,
      required this.createdAt,
      required this.role,
      required this.status,
      required this.bloodGroup,
      required this.emergencyMobileNo,
      required this.dob,
      required this.employeeCode})
      : _mobile = mobile;

  @override
  final String id;
  @override
  final String name;
  @override
  final String? email;
  @override
  final String password;
  final List<String> _mobile;
  @override
  List<String> get mobile {
    if (_mobile is EqualUnmodifiableListView) return _mobile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mobile);
  }

  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final int? pincode;
  @override
  final DateTime createdAt;
  @override
  final UserRole role;
  @override
  final UserStatus status;
  @override
  final String? bloodGroup;
  @override
  final String? emergencyMobileNo;
  @override
  final DateTime? dob;
  @override
  final String employeeCode;

  @override
  String toString() {
    return 'AddUserParams(id: $id, name: $name, email: $email, password: $password, mobile: $mobile, address: $address, city: $city, state: $state, pincode: $pincode, createdAt: $createdAt, role: $role, status: $status, bloodGroup: $bloodGroup, emergencyMobileNo: $emergencyMobileNo, dob: $dob, employeeCode: $employeeCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other._mobile, _mobile) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.bloodGroup, bloodGroup) ||
                other.bloodGroup == bloodGroup) &&
            (identical(other.emergencyMobileNo, emergencyMobileNo) ||
                other.emergencyMobileNo == emergencyMobileNo) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      password,
      const DeepCollectionEquality().hash(_mobile),
      address,
      city,
      state,
      pincode,
      createdAt,
      role,
      status,
      bloodGroup,
      emergencyMobileNo,
      dob,
      employeeCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserParamsImplCopyWith<_$AddUserParamsImpl> get copyWith =>
      __$$AddUserParamsImplCopyWithImpl<_$AddUserParamsImpl>(this, _$identity);
}

abstract class _AddUserParams implements AddUserParams {
  const factory _AddUserParams(
      {required final String id,
      required final String name,
      required final String? email,
      required final String password,
      required final List<String> mobile,
      required final String? address,
      required final String? city,
      required final String? state,
      required final int? pincode,
      required final DateTime createdAt,
      required final UserRole role,
      required final UserStatus status,
      required final String? bloodGroup,
      required final String? emergencyMobileNo,
      required final DateTime? dob,
      required final String employeeCode}) = _$AddUserParamsImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get email;
  @override
  String get password;
  @override
  List<String> get mobile;
  @override
  String? get address;
  @override
  String? get city;
  @override
  String? get state;
  @override
  int? get pincode;
  @override
  DateTime get createdAt;
  @override
  UserRole get role;
  @override
  UserStatus get status;
  @override
  String? get bloodGroup;
  @override
  String? get emergencyMobileNo;
  @override
  DateTime? get dob;
  @override
  String get employeeCode;
  @override
  @JsonKey(ignore: true)
  _$$AddUserParamsImplCopyWith<_$AddUserParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
