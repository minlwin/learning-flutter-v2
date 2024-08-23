import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'person.g.dart';

@riverpod
String personName(PersonNameRef ref) => "JDC";

class PersonWidget extends StatelessWidget {
  const PersonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(child: PersonDataConsumer());
  }
}

class PersonDataConsumer extends ConsumerWidget {
  const PersonDataConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SingleChildScrollView(
      child: Column(
        children: [],
      ),
    );
  }
}
