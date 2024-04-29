import 'package:flutter/material.dart';
import 'package:portfolio/data/profile_data.dart';
import 'package:portfolio/data/socials_data.dart';
import 'package:portfolio/providers/language_provider.dart';
import 'package:portfolio/util/responsive.dart';
import 'package:portfolio/widgets/info_card.dart';
import 'package:portfolio/widgets/social_chips.dart';
import 'package:provider/provider.dart';

class ProfileColumnWidget extends StatelessWidget {
  const ProfileColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String lang = context.watch<LanguageProvider>().language;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //----------------------------------Avatar
        CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage('assets/profile_picture.png'),
        ),
        const SizedBox(height: 20,),
        //-----------------------------------Name & Title
        Text(
          lang == 'eng' ? profileData.name : profileDataRus.name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
        const SizedBox(height: 10,),
        Text(
          lang == 'eng' ? profileData.position : profileDataRus.position
        ),
        const SizedBox(height: 10,),
        //----------------------------------info block
        InfoCard(),
        if(!Responsive.isMobile(context))
        SizedBox(height: 10,),
        if(!Responsive.isMobile(context))
        SocialsData()
      ],
    );
  }
}