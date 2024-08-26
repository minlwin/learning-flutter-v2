import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:p03_locations/pages/home.dart';

final _router = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const HomeScreen())
]);

void main(List<String> args) {
  runApp(ProviderScope(
    child: MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    ),
  ));
}
