import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/data/socials_data.dart';
import 'package:portfolio/sections/profile_column_widget.dart';
import 'package:portfolio/util/responsive.dart';
import 'package:portfolio/widgets/barchart_card.dart';
import 'package:portfolio/widgets/barchart_side_info.dart';
import 'package:portfolio/widgets/barchart_sideinfo_buttom.dart';
import 'package:portfolio/widgets/experience_details_card.dart';
import 'package:portfolio/widgets/my_title.dart';
import 'package:portfolio/widgets/showcase_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTitle(),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 18,right: 18),
              child: Column(
                
                children: [
                  if(Responsive.isMobile(context))
                  ProfileColumnWidget(),
                  SizedBox(height: 15,),
                  ExperienceDetailsCard(),
                  SizedBox(height: 15,),
                  BarChartCard(),
                  if(Responsive.isMobile(context))
                  BarchartSideInfoButtom(),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'My Projects',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                  ),
                  SizedBox(height: 15,),
                  ShowcaseWidget(),
                  if(Responsive.isMobile(context))
                  SocialsData()

                  
                  
                  
                  
            
                ],
              ),
            ),
          ),
        ),
      ],
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