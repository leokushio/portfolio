import 'package:flutter/material.dart';
import 'package:portfolio/data/info_card_data.dart';
import 'package:portfolio/widgets/info_widget.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final infoCardData = InfoCardData();
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
                children: [
                  InfoWidget(infoTitle: infoCardData.infoData[0].title, infoValue: infoCardData.infoData[0].value),
                  InfoWidget(infoTitle: infoCardData.infoData[1].title, infoValue: infoCardData.infoData[1].value),
                  InfoWidget(infoTitle: infoCardData.infoData[2].title, infoValue: infoCardData.infoData[2].value),
                ],
              ),
            ),
          ),
        );
  }
}