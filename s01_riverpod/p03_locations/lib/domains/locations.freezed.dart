// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Division _$DivisionFromJson(Map<String, dynamic> json) {
  return $Division.fromJson(json);
}

/// @nodoc
mixin _$Division {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get districts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DivisionCopyWith<Division> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionCopyWith<$Res> {
  factory $DivisionCopyWith(Division value, $Res Function(Division) then) =
      _$DivisionCopyWithImpl<$Res, Division>;
  @useResult
  $Res call({int id, String name, int districts});
}

/// @nodoc
class _$DivisionCopyWithImpl<$Res, $Val extends Division>
    implements $DivisionCopyWith<$Res> {
  _$DivisionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? districts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      districts: null == districts
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$DivisionImplCopyWith<$Res>
    implements $DivisionCopyWith<$Res> {
  factory _$$$DivisionImplCopyWith(
          _$$DivisionImpl value, $Res Function(_$$DivisionImpl) then) =
      __$$$DivisionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int districts});
}

/// @nodoc
class __$$$DivisionImplCopyWithImpl<$Res>
    extends _$DivisionCopyWithImpl<$Res, _$$DivisionImpl>
    implements _$$$DivisionImplCopyWith<$Res> {
  __$$$DivisionImplCopyWithImpl(
      _$$DivisionImpl _value, $Res Function(_$$DivisionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? districts = null,
  }) {
    return _then(_$$DivisionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      districts: null == districts
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$DivisionImpl implements $Division {
  const _$$DivisionImpl(
      {required this.id, required this.name, required this.districts});

  factory _$$DivisionImpl.fromJson(Map<String, dynamic> json) =>
      _$$$DivisionImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int districts;

  @override
  String toString() {
    return 'Division(id: $id, name: $name, districts: $districts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$DivisionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.districts, districts) ||
                other.districts == districts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, districts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$DivisionImplCopyWith<_$$DivisionImpl> get copyWith =>
      __$$$DivisionImplCopyWithImpl<_$$DivisionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$DivisionImplToJson(
      this,
    );
  }
}

abstract class $Division implements Division {
  const factory $Division(
      {required final int id,
      required final String name,
      required final int districts}) = _$$DivisionImpl;

  factory $Division.fromJson(Map<String, dynamic> json) =
      _$$DivisionImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get districts;
  @override
  @JsonKey(ignore: true)
  _$$$DivisionImplCopyWith<_$$DivisionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

District _$DistrictFromJson(Map<String, dynamic> json) {
  return $District.fromJson(json);
}

/// @nodoc
mixin _$District {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get divisionId => throw _privateConstructorUsedError;
  String get division => throw _privateConstructorUsedError;
  int get townships => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrictCopyWith<District> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictCopyWith<$Res> {
  factory $DistrictCopyWith(District value, $Res Function(District) then) =
      _$DistrictCopyWithImpl<$Res, District>;
  @useResult
  $Res call(
      {int id, String name, int divisionId, String division, int townships});
}

/// @nodoc
class _$DistrictCopyWithImpl<$Res, $Val extends District>
    implements $DistrictCopyWith<$Res> {
  _$DistrictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? divisionId = null,
    Object? division = null,
    Object? townships = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      divisionId: null == divisionId
          ? _value.divisionId
          : divisionId // ignore: cast_nullable_to_non_nullable
              as int,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String,
      townships: null == townships
          ? _value.townships
          : townships // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$DistrictImplCopyWith<$Res>
    implements $DistrictCopyWith<$Res> {
  factory _$$$DistrictImplCopyWith(
          _$$DistrictImpl value, $Res Function(_$$DistrictImpl) then) =
      __$$$DistrictImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, int divisionId, String division, int townships});
}

/// @nodoc
class __$$$DistrictImplCopyWithImpl<$Res>
    extends _$DistrictCopyWithImpl<$Res, _$$DistrictImpl>
    implements _$$$DistrictImplCopyWith<$Res> {
  __$$$DistrictImplCopyWithImpl(
      _$$DistrictImpl _value, $Res Function(_$$DistrictImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? divisionId = null,
    Object? division = null,
    Object? townships = null,
  }) {
    return _then(_$$DistrictImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      divisionId: null == divisionId
          ? _value.divisionId
          : divisionId // ignore: cast_nullable_to_non_nullable
              as int,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String,
      townships: null == townships
          ? _value.townships
          : townships // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$DistrictImpl implements $District {
  const _$$DistrictImpl(
      {required this.id,
      required this.name,
      required this.divisionId,
      required this.division,
      required this.townships});

  factory _$$DistrictImpl.fromJson(Map<String, dynamic> json) =>
      _$$$DistrictImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int divisionId;
  @override
  final String division;
  @override
  final int townships;

  @override
  String toString() {
    return 'District(id: $id, name: $name, divisionId: $divisionId, division: $division, townships: $townships)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$DistrictImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.divisionId, divisionId) ||
                other.divisionId == divisionId) &&
            (identical(other.division, division) ||
                other.division == division) &&
            (identical(other.townships, townships) ||
                other.townships == townships));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, divisionId, division, townships);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$DistrictImplCopyWith<_$$DistrictImpl> get copyWith =>
      __$$$DistrictImplCopyWithImpl<_$$DistrictImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$DistrictImplToJson(
      this,
    );
  }
}

abstract class $District implements District {
  const factory $District(
      {required final int id,
      required final String name,
      required final int divisionId,
      required final String division,
      required final int townships}) = _$$DistrictImpl;

  factory $District.fromJson(Map<String, dynamic> json) =
      _$$DistrictImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get divisionId;
  @override
  String get division;
  @override
  int get townships;
  @override
  @JsonKey(ignore: true)
  _$$$DistrictImplCopyWith<_$$DistrictImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Township _$TownshipFromJson(Map<String, dynamic> json) {
  return $Township.fromJson(json);
}

/// @nodoc
mixin _$Township {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get districtId => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  int get divisionId => throw _privateConstructorUsedError;
  String get division => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TownshipCopyWith<Township> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TownshipCopyWith<$Res> {
  factory $TownshipCopyWith(Township value, $Res Function(Township) then) =
      _$TownshipCopyWithImpl<$Res, Township>;
  @useResult
  $Res call(
      {int id,
      String name,
      int districtId,
      String district,
      int divisionId,
      String division});
}

/// @nodoc
class _$TownshipCopyWithImpl<$Res, $Val extends Township>
    implements $TownshipCopyWith<$Res> {
  _$TownshipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? districtId = null,
    Object? district = null,
    Object? divisionId = null,
    Object? division = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      districtId: null == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      divisionId: null == divisionId
          ? _value.divisionId
          : divisionId // ignore: cast_nullable_to_non_nullable
              as int,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$TownshipImplCopyWith<$Res>
    implements $TownshipCopyWith<$Res> {
  factory _$$$TownshipImplCopyWith(
          _$$TownshipImpl value, $Res Function(_$$TownshipImpl) then) =
      __$$$TownshipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int districtId,
      String district,
      int divisionId,
      String division});
}

/// @nodoc
class __$$$TownshipImplCopyWithImpl<$Res>
    extends _$TownshipCopyWithImpl<$Res, _$$TownshipImpl>
    implements _$$$TownshipImplCopyWith<$Res> {
  __$$$TownshipImplCopyWithImpl(
      _$$TownshipImpl _value, $Res Function(_$$TownshipImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? districtId = null,
    Object? district = null,
    Object? divisionId = null,
    Object? division = null,
  }) {
    return _then(_$$TownshipImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      districtId: null == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      divisionId: null == divisionId
          ? _value.divisionId
          : divisionId // ignore: cast_nullable_to_non_nullable
              as int,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$TownshipImpl implements $Township {
  const _$$TownshipImpl(
      {required this.id,
      required this.name,
      required this.districtId,
      required this.district,
      required this.divisionId,
      required this.division});

  factory _$$TownshipImpl.fromJson(Map<String, dynamic> json) =>
      _$$$TownshipImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int districtId;
  @override
  final String district;
  @override
  final int divisionId;
  @override
  final String division;

  @override
  String toString() {
    return 'Township(id: $id, name: $name, districtId: $districtId, district: $district, divisionId: $divisionId, division: $division)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$TownshipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.divisionId, divisionId) ||
                other.divisionId == divisionId) &&
            (identical(other.division, division) ||
                other.division == division));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, districtId, district, divisionId, division);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$TownshipImplCopyWith<_$$TownshipImpl> get copyWith =>
      __$$$TownshipImplCopyWithImpl<_$$TownshipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$TownshipImplToJson(
      this,
    );
  }
}

abstract class $Township implements Township {
  const factory $Township(
      {required final int id,
      required final String name,
      required final int districtId,
      required final String district,
      required final int divisionId,
      required final String division}) = _$$TownshipImpl;

  factory $Township.fromJson(Map<String, dynamic> json) =
      _$$TownshipImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get districtId;
  @override
  String get district;
  @override
  int get divisionId;
  @override
  String get division;
  @override
  @JsonKey(ignore: true)
  _$$$TownshipImplCopyWith<_$$TownshipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
