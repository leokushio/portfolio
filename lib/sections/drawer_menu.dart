import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/drawer_menu_data.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/sections/dashboard_widget.dart';
import 'package:portfolio/themes/theme_modes.dart';
import 'package:provider/provider.dart';

class DrawerMenu extends StatefulWidget {
  final GlobalKey projectKey;
  const DrawerMenu({super.key, required this.projectKey});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.tertiary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            
            padding: EdgeInsets.only(top: 100, left: 10, right: 10 ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: drawerMenuData.length,
              itemBuilder: (context, index) {
                bool selected = isSelected == index;
                return Padding(           
                  padding: const EdgeInsets.only(bottom: 5.0,),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        isSelected = index;
                      });  
                      Scrollable.ensureVisible(
                        widget.projectKey.currentContext!,
                        duration: Duration(milliseconds: 500)
                        );
                    },
                    borderRadius: BorderRadius.circular(7),
                    child: Container(
                      decoration: BoxDecoration(
                        color: selected 
                        ? Theme.of(context).colorScheme.surfaceTint
                        : Colors.transparent,
                        borderRadius: BorderRadius.circular(7)
                      ),
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Icon(
                            drawerMenuData[index].icon,
                            color: selected 
                              ? Colors.amber
                              : Theme.of(context).colorScheme.surfaceTint,
                          ),
                          SizedBox(width: 10,),
                          Text(
                          drawerMenuData[index].title,
                          style: TextStyle(
                            fontSize: 15,
                            color: selected 
                              ? Theme.of(context).colorScheme.shadow
                              : Theme.of(context).colorScheme.surfaceTint,
                            ),
                          ),
                        
                        ]
                        
                      ),
                    ),
                    
                  ),
                );
              }
              ),
          ),
          //----------------------------------------------theme switch
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
    );
  }
}