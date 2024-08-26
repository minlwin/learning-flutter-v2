import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p03_locations/providers/location.provider.dart';

class Townships extends ConsumerWidget {
  const Townships({super.key, required this.districtId});

  final String districtId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var district = ref.watch(selectedDistrictProvider(districtId));
    var townships = ref.watch(townshipsForDistrictProvider(districtId));
    return Scaffold(
      appBar: AppBar(
        title: switch (district) {
          AsyncData(:final value) => Text(value.name),
          AsyncError() => const Text("Error"),
          _ => const Text("Loading")
        },
      ),
      body: switch (townships) {
        AsyncData(:final value) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.pin_drop),
                title: Text(value[index].name),
              ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: value.length,
            ),
          ),
        AsyncError() => const Center(child: Text("Error")),
        _ => const Center(child: CircularProgressIndicator())
      },
    );
  }
}
