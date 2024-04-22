import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartCard extends StatelessWidget {
  const BarChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(maxHeight: 300),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Theme.of(context).colorScheme.tertiary
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 20),
      child: AspectRatio(
        aspectRatio: 16/10,
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
                      case 2: return Text('JavaScript');
                      case 3: return Text('React Native');
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
                    toY: 90, 
                    width: 30, 
                    borderRadius: BorderRadius.circular(5)
                  )
                ]),
              BarChartGroupData(
                x: 2, 
                barRods: [
                  BarChartRodData(
                    toY: 50, 
                    width: 30, 
                    borderRadius: BorderRadius.circular(5)
                  )
                ]),
              BarChartGroupData(
                x: 3, 
                barRods: [
                  BarChartRodData(
                    toY: 60, 
                    width: 30, 
                    borderRadius: BorderRadius.circular(5)
                  )
                ]),
              BarChartGroupData(
                x: 4, 
                barRods: [
                  BarChartRodData(
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
    );
  }
}