import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/providers/language_provider.dart';
import 'package:portfolio/util/responsive.dart';
import 'package:provider/provider.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    String lang = context.watch<LanguageProvider>().language;
    return SizedBox(
      height: 60, 
      child: Padding(
        padding: const EdgeInsets.only(top: 12,bottom: 10, left: 20),
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
                lang == 'eng' ? 'MY PORTFOLIO' : 'МОЙ ПОРТФОЛИО',
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