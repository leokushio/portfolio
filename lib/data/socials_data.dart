
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/social_chips.dart';

class SocialsData extends StatelessWidget {
  const SocialsData({super.key});

  @override
  Widget build(BuildContext context) {
    final socialsList = [
    const SocialChips(label: 'iloveinnasomuch@gmail.com',icon: 'assets/social.png',),
    const SocialChips(label: 'github.com/leokushio',icon: 'assets/github.png',),
        // SocialChips(label: '@leokusio',icon: 'assets/telegram.png',),
    const SocialChips(label: '+7 (912) 217 6683',icon: 'assets/whatsapp.png',),
  ];

    return Container(
      
      constraints: BoxConstraints(maxHeight: 200, maxWidth: 300),
      child: ListView.builder(
        itemCount: socialsList.length,
        itemBuilder: (context, index){
          return socialsList[index];  
          }     
        ),
    );
  }
}

