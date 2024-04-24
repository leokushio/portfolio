import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/widgets/barchart_bars.dart';

class BarchartSideInfoButtom extends StatelessWidget {
  const BarchartSideInfoButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(maxHeight: 200, maxWidth: 900),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListTile(
                    iconColor: Theme.of(context).colorScheme.primary,
                    titleTextStyle: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.primary),
                    leading: Icon(Icons.add_box), title: Text('Firebase'),
                    ),
                ),
                Expanded(
                  child: ListTile(
                    iconColor: Theme.of(context).colorScheme.primary,
                    titleTextStyle: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.primary),
                    leading: Icon(Icons.add_box), title: Text('Provider'),
                  ),
                ),
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListTile(
                    iconColor: Theme.of(context).colorScheme.primary,
                    titleTextStyle: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.primary),
                    leading: Icon(Icons.add_box), title: Text('Git'),
                    ),
                ),
                Expanded(
                  child: ListTile(
                    iconColor: Theme.of(context).colorScheme.primary,
                    titleTextStyle: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.primary),
                    leading: Icon(Icons.add_box), title: Text('Rest Api'),
                    ),
                ),
                ],
            ),
            
          ],
        ),
      ),
    );
  }
}