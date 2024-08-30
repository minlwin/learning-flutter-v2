import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './main.route.dart';

void main(List<String> args) {
  runApp(
    ProviderScope(
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
