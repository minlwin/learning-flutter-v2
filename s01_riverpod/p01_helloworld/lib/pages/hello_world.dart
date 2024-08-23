import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p01_helloworld/main.dart';

class HelloWorld extends ConsumerWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        ref.read(messageProvider),
        style: const TextStyle(fontSize: 36),
      ),
    );
  }
}
