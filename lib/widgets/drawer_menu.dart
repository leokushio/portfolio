import 'package:flutter/material.dart';
import 'package:portfolio/data/drawer_menu_data.dart';
import 'package:portfolio/themes/theme_modes.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    
    
    return Container(
      
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
    );
  }
}