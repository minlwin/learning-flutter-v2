import 'package:dio/dio.dart';
import 'package:p04_customers/clients/base.url.dart';
import 'package:p04_customers/domains/locations.domain.dart';

class LocationClient {
  LocationClient._();

  static LocationClient? _instance;

  static LocationClient getInstance() {
    _instance ??= LocationClient._();
    return _instance!;
  }

  final _dio = Dio(BaseOptions(baseUrl: baseUrl()));

  Future<List<Division>> getDivisions() async {
    final resp = await _dio.get("/locations/divisions");
    return (resp.data as List)
        .map((e) => divisionFromJson(e))
        .toList(growable: false);
  }

  Future<List<District>> getDistrict(int division) async {
    final resp = await _dio
        .get("/locations/districts", queryParameters: {"division": division});
    return (resp.data as List)
        .map((e) => districtFromJson(e))
        .toList(growable: false);
  }

  Future<List<Township>> getTownship(int district) async {
    final resp = await _dio
        .get("/locations/townships", queryParameters: {"district": district});
    return (resp.data as List)
        .map((a) => townshipFromJson(a))
        .toList(growable: false);
  }
}
