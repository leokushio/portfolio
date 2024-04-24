import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/util/responsive.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70, 
      child: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 20, left: 20),
        child: SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              if(!Responsive.isDesktop(context))
              GestureDetector(
                onTap: () => Scaffold.of(context).openDrawer(),
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(Icons.menu),
                )
                ),
              Text(
                'MY PORTFOLIO',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.w300
                ),
                ),
            ],
          ),
        ),
    )
    );
  }
}