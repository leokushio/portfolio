import 'package:flutter/material.dart';
import 'package:portfolio/data/socials_data.dart';
import 'package:portfolio/providers/scroll_nav_provider.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/sections/profile_column_widget.dart';
import 'package:portfolio/util/responsive.dart';
import 'package:portfolio/widgets/about_me.dart';
import 'package:portfolio/widgets/barchart_card.dart';

import 'package:portfolio/widgets/barchart_sideinfo_buttom.dart';
import 'package:portfolio/widgets/experience_details_card.dart';
import 'package:portfolio/widgets/gamedev_widget.dart';
import 'package:portfolio/widgets/my_title.dart';
import 'package:portfolio/widgets/showcase_widget.dart';
import 'package:provider/provider.dart';
import 'package:visibility_detector/visibility_detector.dart';

class DashboardWidget extends StatelessWidget {
  final ScrollController projectContainer;
  final GlobalKey projectKey;
  final GlobalKey dashKey;
  final GlobalKey socialKey;
  final GlobalKey gameDevKey;
  const DashboardWidget({
    super.key, 
    required this.projectContainer,
    required this.projectKey,
    required this.dashKey,
    required this.socialKey,
    required this.gameDevKey
    });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const MyTitle(),
        Expanded(
          child: SingleChildScrollView(
            // controller: projectContainer, ---- not sure what for, but kept
            child: Padding(
              padding: const EdgeInsets.only(left: 18,right: 18),
              child: Column(
                
                children: [
                  if(Responsive.isMobile(context))
                  const ProfileColumnWidget(),
                  const SizedBox(height: 15,),

                  VisibilityDetector(
                    key: dashKey,
                    child: const ExperienceDetailsCard(),
                    onVisibilityChanged: (info) {
                      var visiblePercentage = info.visibleFraction * 100;
                      if(visiblePercentage > 90){
                        Provider.of<ScrollNavProvider>(context, listen: false).switchButton(0);
                      }
                      
                    },
                    ),
                  const SizedBox(height: 15,),
                  const BarChartCard(),
                  if(Responsive.isMobile(context))
                  const BarchartSideInfoButtom(),
                  const SizedBox(height: 15,),
                  

                  // in the below VisibilityDetector widget switches which menu button
                  // is selected.
                  // tweak visible percentage so that it works rigt on all screans
                  // idea ** try if(mediaquary) --> if (Responsive.isMobile(context))
                  VisibilityDetector(
                    key: projectKey,
                    child: const ShowcaseWidget(),
                    onVisibilityChanged: (info) {
                      var visiblePercentage = info.visibleFraction * 100;
                      if(visiblePercentage > 20){
                        Provider.of<ScrollNavProvider>(context, listen: false).switchButton(1);
                      }
                    },
                    ),
                  const GamedevWidget(),
                  
                  VisibilityDetector(
                    key: socialKey,
                    onVisibilityChanged: (info) {
                      var visiblePercentage = info.visibleFraction * 100;
                      if(visiblePercentage > 20){
                        Provider.of<ScrollNavProvider>(context, listen: false).switchButton(2);
                      }
                    },
                    child: AboutMe()
                    ),
                  if(Responsive.isMobile(context))
                  const SocialsData()    
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
  
}