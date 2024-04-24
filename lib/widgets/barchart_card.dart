import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/util/responsive.dart';
import 'package:portfolio/widgets/barchart_bars.dart';
import 'package:portfolio/widgets/barchart_side_info.dart';

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
        BarchartBars(),
        if(!Responsive.isMobile(context))
        BarchartSideInfo()
      ],
    ),
    );
  }
}