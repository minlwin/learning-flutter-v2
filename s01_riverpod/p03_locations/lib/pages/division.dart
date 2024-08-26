import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:p03_locations/providers/location.provider.dart';

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
