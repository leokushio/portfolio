import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String infoTitle;
  final String infoValue;

  const InfoWidget({super.key, required this.infoTitle, required this.infoValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          infoTitle, 
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.tertiary),
            ),
        Text(
          infoValue, 
          style: TextStyle(color: Theme.of(context).colorScheme.background),
          )
      ],
    );
  }
}