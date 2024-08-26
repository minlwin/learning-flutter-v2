import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:p03_locations/pages/division.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'district.freezed.dart';
part 'district.g.dart';

class Districts extends ConsumerWidget {
  const Districts({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final division = ref.watch(selectedDivisionProvider(id));
    final districts = ref.watch(districtForDivisionProvider(id));
    return Scaffold(
      appBar: AppBar(
        title: switch (division) {
          AsyncData(:final value) => Text(value.name),
          AsyncError() => const Text("Error"),
          _ => const Text("Loading")
        },
      ),
      body: switch (districts) {
        AsyncData(:final value) => ListView.separated(
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.arrow_right),
              title: Text(value[index].name),
            ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: value.length,
            shrinkWrap: true,
          ),
        AsyncError() => const Center(child: Text("Error")),
        _ => const Center(child: CircularProgressIndicator())
      },
    );
  }
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
