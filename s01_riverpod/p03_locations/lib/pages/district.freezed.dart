// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
