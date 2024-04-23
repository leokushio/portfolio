import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BarChartCard extends StatelessWidget {
  const BarChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints.tight(Size(300, 300)),
      // constraints: BoxConstraints(maxHeight: 400, maxWidth: 900),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Theme.of(context).colorScheme.tertiary
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 20),
            child: AspectRatio(
              aspectRatio: 16/9,
              child: BarChart(
                BarChartData(
                  maxY: 100,
                  minY: 0,
                  gridData: FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                  titlesData: FlTitlesData(
                    leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          switch (value){
                            case 0: return Text('Flutter');
                            case 1: return Text('Dart');
                            case 2: return Text('JS');
                            case 3: return Text('React');
                            case 4: return Text('HTML/CSS');
                            }
                          return Text('data');
                        },
                         )
                    )
                  ),
                  barGroups: [
                    BarChartGroupData(
                      x: 0, 
                      barRods: [
                        BarChartRodData(
                          toY: 99, 
                          width: 30, 
                          borderRadius: BorderRadius.circular(5)
                        )
                      ]),
                    BarChartGroupData(
                      x: 1, 
                      barRods: [
                        BarChartRodData(
                          color: Colors.amberAccent,
                          toY: 90, 
                          width: 30, 
                          borderRadius: BorderRadius.circular(5)
                        )
                      ]),
                    BarChartGroupData(
                      x: 2, 
                      barRods: [
                        BarChartRodData(
                          color: Colors.greenAccent,
                          toY: 50, 
                          width: 30, 
                          borderRadius: BorderRadius.circular(5)
                        )
                      ]),
                    BarChartGroupData(
                      x: 3, 
                      barRods: [
                        BarChartRodData(
                          color: Colors.blueAccent,
                          toY: 60, 
                          width: 30, 
                          borderRadius: BorderRadius.circular(5)
                        )
                      ]),
                    BarChartGroupData(
                      x: 4, 
                      barRods: [
                        BarChartRodData(
                          color: Colors.pinkAccent,
                          toY: 80, 
                          width: 30, 
                          borderRadius: BorderRadius.circular(5)
                        )
                      ]),
                  ]
                ),
                
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListTile(iconColor: Theme.of(context).colorScheme.primary,leading: Icon(Icons.add_box), title: Text('Firebase'),),
                ListTile(iconColor: Theme.of(context).colorScheme.primary,leading: Icon(Icons.add_box), title: Text('Provider'),),
                ListTile(iconColor: Theme.of(context).colorScheme.primary,leading: Icon(Icons.add_box), title: Text('Git'),),
                ListTile(iconColor: Theme.of(context).colorScheme.primary,leading: Icon(Icons.add_box), title: Text('Rest Api'),),
              ],
            ),
          ))
      ],
    ),
    );
  }
}