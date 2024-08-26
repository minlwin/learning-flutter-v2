import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:p03_locations/providers/location.provider.dart';

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
        AsyncData(:final value) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.arrow_right),
                title: Text(value[index].name),
                onTap: () => context.push("/townships/${value[index].id}"),
              ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: value.length,
              shrinkWrap: true,
            ),
          ),
        AsyncError() => const Center(child: Text("Error")),
        _ => const Center(child: CircularProgressIndicator())
      },
    );
  }
}
