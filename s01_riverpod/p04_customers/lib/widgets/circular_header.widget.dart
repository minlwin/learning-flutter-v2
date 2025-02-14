import 'package:flutter/material.dart';

class CircularHeaderWidget extends StatelessWidget {
  const CircularHeaderWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 64),
      child: CircleAvatar(
        radius: 64,
        child: child,
      ),
    );
  }
}
