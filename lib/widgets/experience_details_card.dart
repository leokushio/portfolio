import 'package:flutter/material.dart';
import 'package:portfolio/data/experience_data.dart';
import 'package:portfolio/util/responsive.dart';
import 'package:portfolio/widgets/custom_card.dart';

class ExperienceDetailsCard extends StatelessWidget {
  const ExperienceDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final experienceDetails = ExperienceDetails();
    return GridView.builder(
      itemCount: experienceDetails.experienceData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: !Responsive.isMobile(context) ? 4 : 2,
        crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
        mainAxisSpacing: 12
        ), 
      itemBuilder: (context, index) => CustomCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              experienceDetails.experienceData[index].icon,
              size: 30,
              ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                experienceDetails.experienceData[index].value,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
            Text(
              experienceDetails.experienceData[index].title,
              style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.primary
                  
                ),
              ),
          ],
        ),
      )
      );
  }
}