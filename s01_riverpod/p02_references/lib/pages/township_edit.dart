import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p02_references/main.dart';

class TownshipEdit extends ConsumerWidget {
  TownshipEdit({super.key, required this.divisionId});

  final int divisionId;
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Township"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Division Name"),
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              onPressed: () {
                if (nameController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Please enter township name.")));
                } else {
                  ref
                      .read(townshipRepositoryProvider.notifier)
                      .add(divisionId, nameController.text);
                  Navigator.pop(context);
                }
              },
              label: const Text("Save"),
              icon: const Icon(Icons.save),
              style: ElevatedButton.styleFrom(shape: const LinearBorder()),
            )
          ],
        ),
      ),
    );
  }
}
