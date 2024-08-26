import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:p03_locations/domains/locations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location.provider.g.dart';

@riverpod
Future<List<Division>> divisionList(DivisionListRef ref) async {
  final resp =
      await http.get(Uri.http("localhost:8080", "/locations/divisions"));
  final json = jsonDecode(resp.body) as List<dynamic>;
  return json.map((e) => Division.fromJson(e)).toList(growable: false);
}

@riverpod
Future<List<District>> districtForDivision(
    DistrictForDivisionRef ref, int divisionId) async {
  var resp = await http.get(Uri.http(
      "localhost:8080", "/locations/districts", {"divisionId": "$divisionId"}));
  final json = jsonDecode(resp.body) as List<dynamic>;
  return json.map((e) => District.fromJson(e)).toList(growable: false);
}

@riverpod
Future<Division> selectedDivision(SelectedDivisionRef ref, int id) async {
  var resp =
      await http.get(Uri.http("localhost:8080", "/locations/divisions/$id"));
  var json = jsonDecode(resp.body) as Map<String, dynamic>;
  return Division.fromJson(json);
}

@riverpod
Future<District> selectedDistrict(
    SelectedDistrictRef ref, String districtId) async {
  final resp = await http
      .get(Uri.http("localhost:8080", "/locations/districts/$districtId"));
  final json = jsonDecode(resp.body);
  return District.fromJson(json);
}

@riverpod
Future<List<Township>> townshipsForDistrict(
    TownshipsForDistrictRef ref, String districtId) async {
  final resp = await http.get(Uri.http(
      "localhost:8080", "/locations/townships", {"districtId": districtId}));
  final json = jsonDecode(resp.body) as List<dynamic>;
  return json.map((e) => Township.fromJson(e)).toList(growable: false);
}
