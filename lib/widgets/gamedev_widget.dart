import 'package:flutter/material.dart';
import 'package:portfolio/util/responsive.dart';

class GamedevWidget extends StatelessWidget {
  const GamedevWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> mockup = [
      'assets/portfolio_mockup.png',
      'assets/chatapp_mockup.png',
    ];
    final mockups = <MockupModel>[
      MockupModel(assetString: 'assets/portfolio_mockup.png', title: 'Portfolio App'),
      MockupModel(assetString: 'assets/chatapp_mockup.png', title: 'Chat app'),
    ];
    return Column(
      children: [
        //--------------------------------------heading
        Padding(
          // key: projectKey,
          padding: EdgeInsets.only(top: 25, bottom: 12),
          child: Container(
            width: double.maxFinite,
            child: Text(
              'Flutter FLAME. GameDev Projects',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100
              ),
              ),
          ),
        ),
        //-----------------------------------------grid
        GridView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemCount: mockup.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: !Responsive.isMobile(context) ? 5 : 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12
            ), 
          itemBuilder: (context, index)=> Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image:  AssetImage(mockups[index].assetString),
                fit: BoxFit.fill
                )
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text('Comingsoon!'),
              )
            ),
          ),
        
          ),
      ],
    );
  }
}

class MockupModel {
  final String assetString;
  final String title;
  MockupModel ({required this.assetString, required this.title});
}