import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p02_references/domains/domains.dart';
import 'package:p02_references/pages/division_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

void main(List<String> args) {
  runApp(const ProviderScope(
      child: MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DivisionList(),
  )));
}

@riverpod
class DivisionRepository extends _$DivisionRepository {
  @override
  List<Division> build() => [];

  int _id = 0;

  void add(String name) {
    state = [...state, Division(id: ++_id, name: name)];
  }

  Division? findById(int id) {
    return state.where((item) => item.id == id).firstOrNull;
  }
}

@riverpod
class TownshipRepository extends _$TownshipRepository {
  @override
  List<Township> build() => [];

  int _id = 0;

  void add(int divisionId, String name) {
    final division =
        ref.read(divisionRepositoryProvider.notifier).findById(divisionId);
    if (null != division) {
      state = [...state, Township(id: ++_id, name: name, division: division)];
    }
  }
}
