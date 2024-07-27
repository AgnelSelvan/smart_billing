// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pincode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PincodeModel _$PincodeModelFromJson(Map<String, dynamic> json) {
  return _PincodeModel.fromJson(json);
}

/// @nodoc
mixin _$PincodeModel {
  @JsonKey(name: 'Message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'PostOffice')
  List<PostOfficeModel> get postOffice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PincodeModelCopyWith<PincodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PincodeModelCopyWith<$Res> {
  factory $PincodeModelCopyWith(
          PincodeModel value, $Res Function(PincodeModel) then) =
      _$PincodeModelCopyWithImpl<$Res, PincodeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'Status') String? status,
      @JsonKey(name: 'PostOffice') List<PostOfficeModel> postOffice});
}

/// @nodoc
class _$PincodeModelCopyWithImpl<$Res, $Val extends PincodeModel>
    implements $PincodeModelCopyWith<$Res> {
  _$PincodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? postOffice = null,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      postOffice: null == postOffice
          ? _value.postOffice
          : postOffice // ignore: cast_nullable_to_non_nullable
              as List<PostOfficeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PincodeModelImplCopyWith<$Res>
    implements $PincodeModelCopyWith<$Res> {
  factory _$$PincodeModelImplCopyWith(
          _$PincodeModelImpl value, $Res Function(_$PincodeModelImpl) then) =
      __$$PincodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'Status') String? status,
      @JsonKey(name: 'PostOffice') List<PostOfficeModel> postOffice});
}

/// @nodoc
class __$$PincodeModelImplCopyWithImpl<$Res>
    extends _$PincodeModelCopyWithImpl<$Res, _$PincodeModelImpl>
    implements _$$PincodeModelImplCopyWith<$Res> {
  __$$PincodeModelImplCopyWithImpl(
      _$PincodeModelImpl _value, $Res Function(_$PincodeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? postOffice = null,
  }) {
    return _then(_$PincodeModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      postOffice: null == postOffice
          ? _value._postOffice
          : postOffice // ignore: cast_nullable_to_non_nullable
              as List<PostOfficeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PincodeModelImpl implements _PincodeModel {
  _$PincodeModelImpl(
      {@JsonKey(name: 'Message') this.message,
      @JsonKey(name: 'Status') this.status,
      @JsonKey(name: 'PostOffice')
      final List<PostOfficeModel> postOffice = const []})
      : _postOffice = postOffice;

  factory _$PincodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PincodeModelImplFromJson(json);

  @override
  @JsonKey(name: 'Message')
  final String? message;
  @override
  @JsonKey(name: 'Status')
  final String? status;
  final List<PostOfficeModel> _postOffice;
  @override
  @JsonKey(name: 'PostOffice')
  List<PostOfficeModel> get postOffice {
    if (_postOffice is EqualUnmodifiableListView) return _postOffice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postOffice);
  }

  @override
  String toString() {
    return 'PincodeModel(message: $message, status: $status, postOffice: $postOffice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PincodeModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._postOffice, _postOffice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status,
      const DeepCollectionEquality().hash(_postOffice));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PincodeModelImplCopyWith<_$PincodeModelImpl> get copyWith =>
      __$$PincodeModelImplCopyWithImpl<_$PincodeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PincodeModelImplToJson(
      this,
    );
  }
}

abstract class _PincodeModel implements PincodeModel {
  factory _PincodeModel(
      {@JsonKey(name: 'Message') final String? message,
      @JsonKey(name: 'Status') final String? status,
      @JsonKey(name: 'PostOffice')
      final List<PostOfficeModel> postOffice}) = _$PincodeModelImpl;

  factory _PincodeModel.fromJson(Map<String, dynamic> json) =
      _$PincodeModelImpl.fromJson;

  @override
  @JsonKey(name: 'Message')
  String? get message;
  @override
  @JsonKey(name: 'Status')
  String? get status;
  @override
  @JsonKey(name: 'PostOffice')
  List<PostOfficeModel> get postOffice;
  @override
  @JsonKey(ignore: true)
  _$$PincodeModelImplCopyWith<_$PincodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostOfficeModel _$PostOfficeModelFromJson(Map<String, dynamic> json) {
  return _PostOfficeModel.fromJson(json);
}

/// @nodoc
mixin _$PostOfficeModel {
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'BranchType')
  String? get branchType => throw _privateConstructorUsedError;
  @JsonKey(name: 'DeliveryStatus')
  String? get deliveryStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'Circle')
  String? get circle => throw _privateConstructorUsedError;
  @JsonKey(name: 'District')
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'Division')
  String? get division => throw _privateConstructorUsedError;
  @JsonKey(name: 'Region')
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'Block')
  String? get block => throw _privateConstructorUsedError;
  @JsonKey(name: 'State')
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'Country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'Pincode')
  String? get pincode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostOfficeModelCopyWith<PostOfficeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostOfficeModelCopyWith<$Res> {
  factory $PostOfficeModelCopyWith(
          PostOfficeModel value, $Res Function(PostOfficeModel) then) =
      _$PostOfficeModelCopyWithImpl<$Res, PostOfficeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
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
      @JsonKey(name: 'Pincode') String? pincode});
}

/// @nodoc
class _$PostOfficeModelCopyWithImpl<$Res, $Val extends PostOfficeModel>
    implements $PostOfficeModelCopyWith<$Res> {
  _$PostOfficeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? branchType = freezed,
    Object? deliveryStatus = freezed,
    Object? circle = freezed,
    Object? district = freezed,
    Object? division = freezed,
    Object? region = freezed,
    Object? block = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? pincode = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      branchType: freezed == branchType
          ? _value.branchType
          : branchType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryStatus: freezed == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      circle: freezed == circle
          ? _value.circle
          : circle // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      division: freezed == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      block: freezed == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostOfficeModelImplCopyWith<$Res>
    implements $PostOfficeModelCopyWith<$Res> {
  factory _$$PostOfficeModelImplCopyWith(_$PostOfficeModelImpl value,
          $Res Function(_$PostOfficeModelImpl) then) =
      __$$PostOfficeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
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
      @JsonKey(name: 'Pincode') String? pincode});
}

/// @nodoc
class __$$PostOfficeModelImplCopyWithImpl<$Res>
    extends _$PostOfficeModelCopyWithImpl<$Res, _$PostOfficeModelImpl>
    implements _$$PostOfficeModelImplCopyWith<$Res> {
  __$$PostOfficeModelImplCopyWithImpl(
      _$PostOfficeModelImpl _value, $Res Function(_$PostOfficeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? branchType = freezed,
    Object? deliveryStatus = freezed,
    Object? circle = freezed,
    Object? district = freezed,
    Object? division = freezed,
    Object? region = freezed,
    Object? block = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? pincode = freezed,
  }) {
    return _then(_$PostOfficeModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      branchType: freezed == branchType
          ? _value.branchType
          : branchType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryStatus: freezed == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      circle: freezed == circle
          ? _value.circle
          : circle // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      division: freezed == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      block: freezed == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostOfficeModelImpl implements _PostOfficeModel {
  const _$PostOfficeModelImpl(
      {@JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'BranchType') this.branchType,
      @JsonKey(name: 'DeliveryStatus') this.deliveryStatus,
      @JsonKey(name: 'Circle') this.circle,
      @JsonKey(name: 'District') this.district,
      @JsonKey(name: 'Division') this.division,
      @JsonKey(name: 'Region') this.region,
      @JsonKey(name: 'Block') this.block,
      @JsonKey(name: 'State') this.state,
      @JsonKey(name: 'Country') this.country,
      @JsonKey(name: 'Pincode') this.pincode});

  factory _$PostOfficeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostOfficeModelImplFromJson(json);

  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(name: 'BranchType')
  final String? branchType;
  @override
  @JsonKey(name: 'DeliveryStatus')
  final String? deliveryStatus;
  @override
  @JsonKey(name: 'Circle')
  final String? circle;
  @override
  @JsonKey(name: 'District')
  final String? district;
  @override
  @JsonKey(name: 'Division')
  final String? division;
  @override
  @JsonKey(name: 'Region')
  final String? region;
  @override
  @JsonKey(name: 'Block')
  final String? block;
  @override
  @JsonKey(name: 'State')
  final String? state;
  @override
  @JsonKey(name: 'Country')
  final String? country;
  @override
  @JsonKey(name: 'Pincode')
  final String? pincode;

  @override
  String toString() {
    return 'PostOfficeModel(name: $name, description: $description, branchType: $branchType, deliveryStatus: $deliveryStatus, circle: $circle, district: $district, division: $division, region: $region, block: $block, state: $state, country: $country, pincode: $pincode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostOfficeModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.branchType, branchType) ||
                other.branchType == branchType) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.circle, circle) || other.circle == circle) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.division, division) ||
                other.division == division) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.block, block) || other.block == block) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      branchType,
      deliveryStatus,
      circle,
      district,
      division,
      region,
      block,
      state,
      country,
      pincode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostOfficeModelImplCopyWith<_$PostOfficeModelImpl> get copyWith =>
      __$$PostOfficeModelImplCopyWithImpl<_$PostOfficeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostOfficeModelImplToJson(
      this,
    );
  }
}

abstract class _PostOfficeModel implements PostOfficeModel {
  const factory _PostOfficeModel(
      {@JsonKey(name: 'Name') final String? name,
      @JsonKey(name: 'Description') final String? description,
      @JsonKey(name: 'BranchType') final String? branchType,
      @JsonKey(name: 'DeliveryStatus') final String? deliveryStatus,
      @JsonKey(name: 'Circle') final String? circle,
      @JsonKey(name: 'District') final String? district,
      @JsonKey(name: 'Division') final String? division,
      @JsonKey(name: 'Region') final String? region,
      @JsonKey(name: 'Block') final String? block,
      @JsonKey(name: 'State') final String? state,
      @JsonKey(name: 'Country') final String? country,
      @JsonKey(name: 'Pincode') final String? pincode}) = _$PostOfficeModelImpl;

  factory _PostOfficeModel.fromJson(Map<String, dynamic> json) =
      _$PostOfficeModelImpl.fromJson;

  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(name: 'BranchType')
  String? get branchType;
  @override
  @JsonKey(name: 'DeliveryStatus')
  String? get deliveryStatus;
  @override
  @JsonKey(name: 'Circle')
  String? get circle;
  @override
  @JsonKey(name: 'District')
  String? get district;
  @override
  @JsonKey(name: 'Division')
  String? get division;
  @override
  @JsonKey(name: 'Region')
  String? get region;
  @override
  @JsonKey(name: 'Block')
  String? get block;
  @override
  @JsonKey(name: 'State')
  String? get state;
  @override
  @JsonKey(name: 'Country')
  String? get country;
  @override
  @JsonKey(name: 'Pincode')
  String? get pincode;
  @override
  @JsonKey(ignore: true)
  _$$PostOfficeModelImplCopyWith<_$PostOfficeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
