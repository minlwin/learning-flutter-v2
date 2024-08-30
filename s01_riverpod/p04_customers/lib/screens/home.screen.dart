import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/background/background.png"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 10 * 6.5,
                width: MediaQuery.of(context).size.width,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(height: 60),
                        CircleAvatar(
                          radius: 60,
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                          child: const Icon(
                            Icons.person_outline,
                            size: 80,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Customer Management",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "Sample application for JDC Flutter Open Class.",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 60),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            FilledButton.icon(
                              onPressed: () {
                                context.push("/customers");
                              },
                              icon: const Icon(Icons.search),
                              label: const Text("Search Customer"),
                              style: const ButtonStyle(
                                padding:
                                    WidgetStatePropertyAll(EdgeInsets.all(12)),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            FilledButton.icon(
                              onPressed: () {
                                context.push("/customers/add");
                              },
                              icon: const Icon(Icons.add),
                              label: const Text("Create Customer"),
                              style: const ButtonStyle(
                                padding:
                                    WidgetStatePropertyAll(EdgeInsets.all(12)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 60),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
