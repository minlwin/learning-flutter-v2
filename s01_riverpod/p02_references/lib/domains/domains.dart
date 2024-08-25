import 'package:freezed_annotation/freezed_annotation.dart';

part 'domains.freezed.dart';

@freezed
class Division with _$Division {
  const factory Division({
    required int id,
    required String name,
  }) = $Division;
}

@freezed
class Township with _$Township {
  const factory Township({
    required int id,
    required String name,
    required Division division,
  }) = $Township;
}
