// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'domains.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Division {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DivisionCopyWith<Division> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionCopyWith<$Res> {
  factory $DivisionCopyWith(Division value, $Res Function(Division) then) =
      _$DivisionCopyWithImpl<$Res, Division>;
  @useResult
  $Res call({int id, String name});
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
  $Res call({int id, String name});
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
    ));
  }
}

/// @nodoc

class _$$DivisionImpl implements $Division {
  const _$$DivisionImpl({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Division(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$DivisionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$DivisionImplCopyWith<_$$DivisionImpl> get copyWith =>
      __$$$DivisionImplCopyWithImpl<_$$DivisionImpl>(this, _$identity);
}

abstract class $Division implements Division {
  const factory $Division({required final int id, required final String name}) =
      _$$DivisionImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$$DivisionImplCopyWith<_$$DivisionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Township {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Division get division => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TownshipCopyWith<Township> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TownshipCopyWith<$Res> {
  factory $TownshipCopyWith(Township value, $Res Function(Township) then) =
      _$TownshipCopyWithImpl<$Res, Township>;
  @useResult
  $Res call({int id, String name, Division division});

  $DivisionCopyWith<$Res> get division;
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
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as Division,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DivisionCopyWith<$Res> get division {
    return $DivisionCopyWith<$Res>(_value.division, (value) {
      return _then(_value.copyWith(division: value) as $Val);
    });
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
  $Res call({int id, String name, Division division});

  @override
  $DivisionCopyWith<$Res> get division;
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
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as Division,
    ));
  }
}

/// @nodoc

class _$$TownshipImpl implements $Township {
  const _$$TownshipImpl(
      {required this.id, required this.name, required this.division});

  @override
  final int id;
  @override
  final String name;
  @override
  final Division division;

  @override
  String toString() {
    return 'Township(id: $id, name: $name, division: $division)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$TownshipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.division, division) ||
                other.division == division));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, division);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$TownshipImplCopyWith<_$$TownshipImpl> get copyWith =>
      __$$$TownshipImplCopyWithImpl<_$$TownshipImpl>(this, _$identity);
}

abstract class $Township implements Township {
  const factory $Township(
      {required final int id,
      required final String name,
      required final Division division}) = _$$TownshipImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  Division get division;
  @override
  @JsonKey(ignore: true)
  _$$$TownshipImplCopyWith<_$$TownshipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
