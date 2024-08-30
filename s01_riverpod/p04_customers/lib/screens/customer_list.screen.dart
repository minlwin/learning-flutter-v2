import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CustomerListScreen extends ConsumerWidget {
  const CustomerListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customers"),
        actions: [
          IconButton(
            onPressed: () {
              context.push("/customers/add");
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
