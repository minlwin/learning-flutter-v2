import 'package:go_router/go_router.dart';
import 'package:p04_customers/screens/customer_details.screen.dart';
import 'package:p04_customers/screens/customer_edit.screen.dart';
import 'package:p04_customers/screens/customer_list.screen.dart';
import 'package:p04_customers/screens/home.screen.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const HomeScreen(),
    routes: [
      GoRoute(
        path: "customers",
        builder: (context, state) => const CustomerListScreen(),
        routes: [
          GoRoute(
            path: "details:id",
            builder: (context, state) =>
                CustomerDetailsScreen(id: state.pathParameters['id']!),
          ),
          GoRoute(
            path: "add",
            builder: (context, state) => const CustomerEditScreen(),
          ),
          GoRoute(
            path: "edit:id",
            builder: (context, state) =>
                CustomerEditScreen(id: state.pathParameters['id']),
          )
        ],
      ),
    ],
  )
]);
