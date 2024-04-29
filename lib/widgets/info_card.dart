import 'package:flutter/material.dart';
import 'package:portfolio/data/info_card_data.dart';
import 'package:portfolio/providers/language_provider.dart';
import 'package:portfolio/widgets/info_widget.dart';
import 'package:provider/provider.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final infoCardData = InfoCardData();
    String lang = context.watch<LanguageProvider>().language;
    final infoData = [
      InfoWidget(infoTitle: infoCardData.infoData[0].title, infoValue: infoCardData.infoData[0].value),
      InfoWidget(infoTitle: infoCardData.infoData[1].title, infoValue: infoCardData.infoData[1].value),
      InfoWidget(infoTitle: infoCardData.infoData[2].title, infoValue: infoCardData.infoData[2].value),
    ];
    final infoDataRus = [
      InfoWidget(infoTitle: infoCardData.infoDataRus[0].title, infoValue: infoCardData.infoDataRus[0].value),
      InfoWidget(infoTitle: infoCardData.infoDataRus[1].title, infoValue: infoCardData.infoDataRus[1].value),
      InfoWidget(infoTitle: infoCardData.infoDataRus[2].title, infoValue: infoCardData.infoDataRus[2].value),
    ];

    return Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.inversePrimary,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: 
                  lang == 'eng' ? infoData : infoDataRus
                ,
              ),
            ),
          ),
        );
  }
}