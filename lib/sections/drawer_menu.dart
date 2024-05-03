import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/drawer_menu_data.dart';
import 'package:portfolio/providers/language_provider.dart';
import 'package:portfolio/providers/scroll_nav_provider.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/sections/dashboard_widget.dart';
import 'package:portfolio/themes/theme_modes.dart';
import 'package:provider/provider.dart';

class DrawerMenu extends StatefulWidget {
  final GlobalKey projectKey;
  final GlobalKey dashKey;
  final GlobalKey socialKey;
  final GlobalKey gameDevKey;
  const DrawerMenu({
    super.key, 
    required this.projectKey,
    required this.dashKey,
    required this.socialKey,
    required this.gameDevKey
    });

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  // int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    final  myKeys = <GlobalKey>[  
      widget.dashKey,
      widget.projectKey,
      // widget.gameDevKey,
      widget.socialKey,
    ];
    final isSelected = context.watch<ScrollNavProvider>().isSelected;
    final changeLang = context.read<LanguageProvider>();
    String lang = context.watch<LanguageProvider>().language;
    return Container(
      color: Theme.of(context).colorScheme.tertiary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //------------------------------------------lang change
          Column(
            
            children: [
              Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 25,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => changeLang.toRus(),
                    child: Image.asset('assets/rus.png'),
                  ),
                  const SizedBox(width: 15,),
                  GestureDetector(
                    onTap: () => changeLang.toEng(),
                    child: Image.asset('assets/eng.png'),
                  )
                ],
              ),
            ),
          ),
              //--------------------------------------------menu
              Container(
                
                padding: EdgeInsets.only(top: 50, left: 10, right: 10 ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: drawerMenuData.length,
                  itemBuilder: (context, index) {
                    bool selected = isSelected == index;
                    return Padding(           
                      padding: const EdgeInsets.only(bottom: 5.0,),
                      child: InkWell(
                        onTap: (){
                          // Provider.of<ScrollNavProvider>(context, listen: false).switchButton(index); 
                          context.read<ScrollNavProvider>().switchButton(index); 
                          Scrollable.ensureVisible(
                            myKeys[index].currentContext!,
                            duration: Duration(milliseconds: 0)
                            );
                            // print(index);
                            // print(isSelected);
                     
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
                                lang == 'eng' ? drawerMenuData[index].icon : drawerMenuDataRus[index].icon,
                                color: selected 
                                  ? Colors.amber
                                  : Theme.of(context).colorScheme.surfaceTint,
                              ),
                              SizedBox(width: 10,),
                              Text(
                              lang == 'eng' ? drawerMenuData[index].title : drawerMenuDataRus[index].title,
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
              
            ],
            
          ),
          //----------------------------------------------theme switch
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      lang == 'eng' ? 'Light Mode' : 'Свет. Режим',
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