import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.house),
        title: const Text("Riverpod Web Service"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(),
            SizedBox(height: 16),
            LocationMenu(),
            SizedBox(height: 16),
            CustomerMenu()
          ],
        ),
      ),
    );
  }
}

class CustomerMenu extends StatelessWidget {
  const CustomerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Customers",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Text(
            "We will learn about CURD Operations for REST API. State management will also be used Riverpod.",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              context.push("/customers");
            },
            style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                padding: const EdgeInsets.all(16)),
            child: Text(
              "Customer Management",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          )
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        "We will learn about routing, state management and web client in this sample application.",
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}

class LocationMenu extends ConsumerWidget {
  const LocationMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Locations",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Text(
            "We will learn about simple get request and state management in this section.",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: LocationIconMenu(
                  title: "Divisions",
                  icon: const Icon(
                    Icons.map_outlined,
                    size: 36,
                    color: Colors.white,
                  ),
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Expanded(
                child: LocationIconMenu(
                  title: "Districts",
                  icon: const Icon(
                    Icons.flag_outlined,
                    size: 36,
                    color: Colors.white,
                  ),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Expanded(
                child: LocationIconMenu(
                  title: "Townships",
                  icon: const Icon(
                    Icons.pin_drop,
                    size: 36,
                    color: Colors.white,
                  ),
                  color: Theme.of(context).colorScheme.error,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class LocationIconMenu extends StatelessWidget {
  const LocationIconMenu({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  final String title;
  final Icon icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push("/divisions");
      },
      child: Card(
        elevation: 0,
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon,
              const SizedBox(height: 8),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
