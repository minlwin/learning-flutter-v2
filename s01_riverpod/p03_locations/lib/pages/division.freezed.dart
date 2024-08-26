// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division.dart';

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
