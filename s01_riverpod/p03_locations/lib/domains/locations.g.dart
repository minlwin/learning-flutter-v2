// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.dart';

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

_$$DistrictImpl _$$$DistrictImplFromJson(Map<String, dynamic> json) =>
    _$$DistrictImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      divisionId: (json['divisionId'] as num).toInt(),
      division: json['division'] as String,
      townships: (json['townships'] as num).toInt(),
    );

Map<String, dynamic> _$$$DistrictImplToJson(_$$DistrictImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'divisionId': instance.divisionId,
      'division': instance.division,
      'townships': instance.townships,
    };

_$$TownshipImpl _$$$TownshipImplFromJson(Map<String, dynamic> json) =>
    _$$TownshipImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      districtId: (json['districtId'] as num).toInt(),
      district: json['district'] as String,
      divisionId: (json['divisionId'] as num).toInt(),
      division: json['division'] as String,
    );

Map<String, dynamic> _$$$TownshipImplToJson(_$$TownshipImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'districtId': instance.districtId,
      'district': instance.district,
      'divisionId': instance.divisionId,
      'division': instance.division,
    };
