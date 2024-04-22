import 'package:flutter/material.dart';

class SocialChips extends StatelessWidget {
  final String label;
  final String icon;
  const SocialChips({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chip(
        labelStyle: TextStyle(fontSize: 12),
        avatar: Image.asset(icon),
        label: Text(label)
        ),
    );
  }
}