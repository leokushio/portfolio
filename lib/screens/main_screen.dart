import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/widgets/dashboard_widget.dart';
import 'package:portfolio/widgets/drawer_menu.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    // Color txt = Theme.of(context).colorScheme.inversePrimary;
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Theme.of(context).colorScheme.tertiary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DrawerMenu(),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Light Mode',
                          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                          ),
                          CupertinoSwitch(
                            value: context.watch<ThemeProvider>().isSwitched, 
                            onChanged: (value) {
                              context.read<ThemeProvider>().switchTheme();
                            }),
                        ],
                      ),
                    )
                    ],
                ),
              )
              ),
            Expanded(
              flex: 7,
              child: DashboardWidget()
              ),
            Expanded(
              flex: 3,
              child: Container(color: Colors.greenAccent,)
              ),
          ],
        )
        ),
    );
  }
}