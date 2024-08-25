import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p02_references/main.dart';
import 'package:p02_references/pages/division_details.dart';
import 'package:p02_references/pages/division_edit.dart';
import 'package:p02_references/pages/nodata.dart';

class DivisionList extends ConsumerWidget {
  const DivisionList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var list = ref.watch(divisionRepositoryProvider);
    ref.watch(townshipRepositoryProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Divisions"),
        leading: const Icon(Icons.home),
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DivisionEdit(),
                  )),
              icon: const Icon(Icons.add))
        ],
      ),
      body: list.isEmpty
          ? const NoData(
              name: "Division",
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    child: Text("${list[index].id}"),
                  ),
                  title: Text(list[index].name),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DivisionDetails(
                        divisionId: list[index].id,
                      ),
                    ));
                  },
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: list.length,
              ),
            ),
    );
  }
}
