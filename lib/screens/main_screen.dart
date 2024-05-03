import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/sections/dashboard_widget.dart';
import 'package:portfolio/sections/drawer_menu.dart';
import 'package:portfolio/sections/profile_column_widget.dart';
import 'package:portfolio/util/responsive.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    final dashKey = GlobalKey();
    final projectKey = GlobalKey();
    final socialKey = GlobalKey();
    final gameDevKey = GlobalKey();
    final ScrollController projectContainer = ScrollController();
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktop
      ? SizedBox(
        width: 250,
        child: DrawerMenu(projectKey: projectKey,dashKey: dashKey,socialKey: socialKey,gameDevKey: gameDevKey,),
      )
      : null,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isDesktop)
            Expanded(
              flex: 2,
              child: DrawerMenu(projectKey: projectKey,dashKey: dashKey,socialKey: socialKey,gameDevKey: gameDevKey,)
              ),
            Expanded(
              flex: 7,
              child: DashboardWidget(projectContainer: projectContainer,projectKey: projectKey,dashKey: dashKey,socialKey: socialKey,gameDevKey: gameDevKey,)
              ),
            if (!Responsive.isMobile(context))
            Expanded(
              flex: 3,
              child: ProfileColumnWidget()
              ),
          ],
        )
        ),
    );
  }
}
