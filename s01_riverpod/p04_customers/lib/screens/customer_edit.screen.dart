import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomerEditScreen extends ConsumerWidget {
  const CustomerEditScreen({super.key, this.id});
  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(id != null ? "Edit Customer" : "Add New Customer"),
      ),
    );
  }
}
