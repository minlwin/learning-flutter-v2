import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:p03_locations/pages/customer.dart';
import 'package:p03_locations/pages/district.dart';
import 'package:p03_locations/pages/division.dart';
import 'package:p03_locations/pages/home.dart';
import 'package:p03_locations/pages/township.dart';

final _router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: "/divisions",
    builder: (context, state) => const Divisions(),
  ),
  GoRoute(
    path: "/districts/:id",
    builder: (context, state) {
      final id = state.pathParameters["id"];
      return Districts(id: int.parse(id!));
    },
  ),
  GoRoute(
    path: "/townships/:id",
    builder: (context, state) {
      final id = state.pathParameters["id"];
      return Townships(districtId: id!);
    },
  ),
  GoRoute(
    path: "/customers",
    builder: (context, state) => const Customers(),
  )
]);

void main(List<String> args) {
  runApp(ProviderScope(
    observers: [MyObserver()],
    child: MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    ),
  ));
}

class MyObserver extends ProviderObserver {
  @override
  void providerDidFail(ProviderBase<Object?> provider, Object error,
      StackTrace stackTrace, ProviderContainer container) {
    log("Provider $provider throws $error and trace is $stackTrace");
  }
}
