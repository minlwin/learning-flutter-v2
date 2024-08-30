import 'package:p04_customers/clients/location.client.dart';
import 'package:p04_customers/domains/locations.domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locations.provider.g.dart';

@riverpod
Future<List<Division>> divisions(DivisionsRef ref) async {
  final result = await LocationClient.getInstance().getDivisions();
  return result;
}

@riverpod
Future<List<District>> districts(DistrictsRef ref,
    {required int division}) async {
  final result = await LocationClient.getInstance().getDistrict(division);
  return result;
}

@riverpod
Future<List<Township>> townships(TownshipsRef ref,
    {required int district}) async {
  final result = await LocationClient.getInstance().getTownship(district);
  return result;
}
