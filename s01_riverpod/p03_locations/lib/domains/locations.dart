import 'package:freezed_annotation/freezed_annotation.dart';

part 'locations.freezed.dart';
part 'locations.g.dart';

@freezed
abstract class Division with _$Division {
  const factory Division({
    required int id,
    required String name,
    required int districts,
  }) = $Division;

  factory Division.fromJson(Map<String, Object?> json) =>
      _$DivisionFromJson(json);
}

@freezed
abstract class District with _$District {
  const factory District({
    required int id,
    required String name,
    required int divisionId,
    required String division,
    required int townships,
  }) = $District;

  factory District.fromJson(Map<String, Object?> json) =>
      _$DistrictFromJson(json);
}

@freezed
abstract class Township with _$Township {
  const factory Township({
    required int id,
    required String name,
    required int districtId,
    required String district,
    required int divisionId,
    required String division,
  }) = $Township;

  factory Township.fromJson(Map<String, Object?> json) =>
      _$TownshipFromJson(json);
}
