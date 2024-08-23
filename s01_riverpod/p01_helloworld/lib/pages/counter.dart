import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter.g.dart';

@riverpod
class CounterState extends _$CounterState {
  @override
  int build() => 0;

  countUp() {
    state++;
  }

  countDown() {
    state--;
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(child: CounterApp());
  }
}

class CounterApp extends ConsumerWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Counter Demo",
            style: TextStyle(fontSize: 36),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '${ref.watch(counterStateProvider)}',
              style: const TextStyle(fontSize: 60),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                child: const Text("Down"),
                onPressed: () =>
                    ref.read(counterStateProvider.notifier).countDown(),
              ),
              MaterialButton(
                child: const Text("Up"),
                onPressed: () =>
                    ref.read(counterStateProvider.notifier).countUp(),
              )
            ],
          )
        ],
      ),
    );
  }
}
