import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/widgets/barchart_card.dart';
import 'package:portfolio/widgets/experience_details_card.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          
          children: [
            SizedBox(height: 15,),
            _myTitle(context),
            SizedBox(height: 15,),
            ExperienceDetailsCard(),
            SizedBox(height: 15,),
            BarChartCard(),
            
            
      
          ],
        ),
      ),
    );
  }
  Widget _myTitle (BuildContext context) {
    return SizedBox(
          width: double.maxFinite,
          child: Text(
            'MY PORTFOLIO',
            style: TextStyle(
              fontSize: 30.0,
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.w300
            ),
            ),
        );
  }
}