import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p02_references/main.dart';
import 'package:p02_references/pages/nodata.dart';
import 'package:p02_references/pages/township_edit.dart';

class DivisionDetails extends ConsumerWidget {
  const DivisionDetails({super.key, required this.divisionId});

  final int divisionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final division =
        ref.read(divisionRepositoryProvider.notifier).findById(divisionId);
    final townships = ref
        .watch(townshipRepositoryProvider)
        .where((tsh) => tsh.division.id == divisionId)
        .toList(growable: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(division?.name ?? ""),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TownshipEdit(divisionId: divisionId),
              ));
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: townships.isEmpty
            ? const NoData(name: "Township")
            : ListView.separated(
                itemBuilder: (context, index) => ListTile(
                  title: Text(townships[index].name),
                  leading: CircleAvatar(
                    child: Text("${index + 1}"),
                  ),
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: townships.length,
                shrinkWrap: true,
              ),
      ),
    );
  }
}
