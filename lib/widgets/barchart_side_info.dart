import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/widgets/barchart_bars.dart';

class BarchartSideInfo extends StatelessWidget {
  const BarchartSideInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              iconColor: Theme.of(context).colorScheme.primary,
              titleTextStyle: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.primary),
              leading: Icon(Icons.add_box), title: Text('Firebase'),
              ),
            ListTile(
              iconColor: Theme.of(context).colorScheme.primary,
              titleTextStyle: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.primary),
              leading: Icon(Icons.add_box), title: Text('Provider'),
              ),
            ListTile(
              iconColor: Theme.of(context).colorScheme.primary,
              titleTextStyle: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.primary),
              leading: Icon(Icons.add_box), title: Text('Git'),
              ),
            ListTile(
              iconColor: Theme.of(context).colorScheme.primary,
              titleTextStyle: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.primary),
              leading: Icon(Icons.add_box), title: Text('Rest Api'),
              ),
          ],
        ),
      ));
  }
}