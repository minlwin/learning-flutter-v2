import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'division.freezed.dart';
part 'division.g.dart';

class Divisions extends ConsumerWidget {
  const Divisions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final divisions = ref.watch(divisionListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Divisions"),
      ),
      body: Center(
        child: switch (divisions) {
          AsyncData(:final value) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.separated(
                itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.arrow_right),
                  title: Text(value[index].name),
                  onTap: () => context.push("/districts/${value[index].id}"),
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: value.length,
                shrinkWrap: true,
              ),
            ),
          AsyncError() => const Text("Error"),
          _ => const CircularProgressIndicator()
        },
      ),
    );
  }
}

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

@riverpod
Future<List<Division>> divisionList(DivisionListRef ref) async {
  final resp =
      await http.get(Uri.http("localhost:8080", "/locations/divisions"));
  final json = jsonDecode(resp.body) as List<dynamic>;
  return json.map((e) => Division.fromJson(e)).toList(growable: false);
}
