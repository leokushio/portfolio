import 'package:flutter/material.dart';
import 'package:portfolio/widgets/info_card.dart';
import 'package:portfolio/widgets/social_chips.dart';

class ProfileColumnWidget extends StatelessWidget {
  const ProfileColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //----------------------------------Avatar
        CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage('assets/profile_picture.png'),
          // child: Image.asset('assets/profile_picture.png'),
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
        SizedBox(height: 20,),
        //----------------------------------info block
        InfoCard(),
        SocialChips(label: 'iloveinnasomuch@gmail.com',icon: 'assets/social.png',),
        SocialChips(label: 'github.com/leokushio',icon: 'assets/github.png',),
        // SocialChips(label: '@leokusio',icon: 'assets/telegram.png',),
        SocialChips(label: '+7 (912) 217 6683',icon: 'assets/whatsapp.png',),
      ],
    );
  }
}