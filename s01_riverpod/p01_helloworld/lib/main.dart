import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p01_helloworld/pages/counter.dart';
import 'package:p01_helloworld/pages/hello_world.dart';
import 'package:p01_helloworld/pages/person.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

void main(List<String> args) {
  runApp(const ProviderScope(child: MyFirstApp()));
}

class MyFirstApp extends ConsumerWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Helloworld",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Riverpod"),
          backgroundColor: const Color.fromARGB(255, 213, 204, 245),
        ),
        body: _loadBody(ref.watch(currentPageProvider)),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Hello",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.plus_one),
              label: "Counter",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            )
          ],
          currentIndex: ref.watch(currentPageProvider),
          selectedItemColor: const Color.fromARGB(255, 13, 5, 248),
          onTap: (value) =>
              ref.read(currentPageProvider.notifier).setPage(value),
        ),
      ),
    );
  }

  _loadBody(int index) {
    if (index == 1) {
      return const CounterPage();
    } else if (index == 2) {
      return const PersonWidget();
    }

    return const HelloWorld();
  }
}

@riverpod
class CurrentPage extends _$CurrentPage {
  @override
  int build() => 0;

  setPage(int index) {
    state = index;
  }
}

@riverpod
String message(MessageRef ref) => "Hello Riverpod";