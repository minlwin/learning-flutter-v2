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
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            ProfileWidget(),
            SizedBox(height: 8),
            PersonalSetting(),
            SizedBox(height: 8),
            SubMenu(),
          ],
        ),
      ),
    );
  }
}

class SubMenu extends ConsumerWidget {
  const SubMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Quick Access",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Icon(
                        Icons.camera,
                        size: 60,
                      ),
                      Text("Gallary")
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Icon(
                        Icons.note_add_outlined,
                        size: 60,
                      ),
                      Text("Take Memo")
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Icon(
                        Icons.qr_code_outlined,
                        size: 60,
                      ),
                      Text("Explore")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PersonalSetting extends ConsumerWidget {
  const PersonalSetting({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "User Functions",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListView(
              shrinkWrap: true,
              children: ListTile.divideTiles(
                context: context,
                tiles: [
                  const ListTile(
                    title: Text("Account Balance"),
                    dense: true,
                    leading: Icon(Icons.account_balance_wallet_outlined),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  const ListTile(
                    title: Text("Linked Banks"),
                    dense: true,
                    leading: Icon(Icons.account_balance_outlined),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  const ListTile(
                    title: Text("Orders"),
                    dense: true,
                    leading: Icon(Icons.shopping_cart_checkout),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  const ListTile(
                    title: Text("Payment Plans"),
                    dense: true,
                    leading: Icon(Icons.calendar_month),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  const ListTile(
                    title: Text("Messages"),
                    dense: true,
                    leading: Icon(Icons.mail_outline_outlined),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  const ListTile(
                    title: Text("Big Sales"),
                    dense: true,
                    leading: Icon(Icons.campaign_outlined),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ],
              ).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileWidget extends ConsumerWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.person_outline,
                size: 96,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Zaw Min Lwin",
                  style: TextStyle(fontSize: 24),
                ),
                Text("lwin.zawmin@gmail.com"),
                Text("09782003098"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
