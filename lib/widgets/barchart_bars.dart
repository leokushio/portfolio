import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BarchartBars extends StatelessWidget {
  const BarchartBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                        reservedSize: 30,
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          switch (value){
                            case 0: return const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text('Flutter'),
                            );
                            case 1: return const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text('Dart'),
                            );
                            case 2: return const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text('JS'),
                            );
                            case 3: return const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text('React'),
                            );
                            case 4: return const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text('HTML/CSS'),
                            );
                            }
                          return const Text('data');
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
                          // color: Colors.amberAccent,
                          toY: 90, 
                          width: 30, 
                          borderRadius: BorderRadius.circular(5)
                        )
                      ]),
                    BarChartGroupData(
                      x: 2, 
                      barRods: [
                        BarChartRodData(
                          // color: Colors.greenAccent,
                          toY: 50, 
                          width: 30, 
                          borderRadius: BorderRadius.circular(5)
                        )
                      ]),
                    BarChartGroupData(
                      x: 3, 
                      barRods: [
                        BarChartRodData(
                          // color: Colors.blueAccent,
                          toY: 60, 
                          width: 30, 
                          borderRadius: BorderRadius.circular(5)
                        )
                      ]),
                    BarChartGroupData(
                      x: 4, 
                      barRods: [
                        BarChartRodData(
                          // color: Colors.pinkAccent,
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