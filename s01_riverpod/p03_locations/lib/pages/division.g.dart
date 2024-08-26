// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$DivisionImpl _$$$DivisionImplFromJson(Map<String, dynamic> json) =>
    _$$DivisionImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      districts: (json['districts'] as num).toInt(),
    );

Map<String, dynamic> _$$$DivisionImplToJson(_$$DivisionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'districts': instance.districts,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$divisionListHash() => r'96c70f9dd704258f133c2d0770ffaab3bc192fd8';

/// See also [divisionList].
@ProviderFor(divisionList)
final divisionListProvider = AutoDisposeFutureProvider<List<Division>>.internal(
  divisionList,
  name: r'divisionListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$divisionListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DivisionListRef = AutoDisposeFutureProviderRef<List<Division>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
