import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NoData extends ConsumerWidget {
  final String? name;

  const NoData({super.key, this.name});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.info,
            size: 60,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'No ${name ?? "Data"}',
            style: Theme.of(context).textTheme.headlineLarge,
          )
        ],
      ),
    );
  }
}
