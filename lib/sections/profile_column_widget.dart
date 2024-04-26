import 'package:flutter/material.dart';
import 'package:portfolio/data/socials_data.dart';
import 'package:portfolio/util/responsive.dart';
import 'package:portfolio/widgets/info_card.dart';
import 'package:portfolio/widgets/social_chips.dart';

class ProfileColumnWidget extends StatelessWidget {
  const ProfileColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //----------------------------------Avatar
        CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage('assets/profile_picture.png'),
        ),
        SizedBox(height: 20,),
        //-----------------------------------Name & Title
        Text(
          'Hakeem Oloyede',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
        SizedBox(height: 10,),
        Text('Mobile/Web app Developer'),
        SizedBox(height: 10,),
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