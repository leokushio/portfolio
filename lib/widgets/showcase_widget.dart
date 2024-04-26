import 'package:flutter/material.dart';
import 'package:portfolio/util/responsive.dart';

class ShowcaseWidget extends StatelessWidget {
  const ShowcaseWidget({super.key});

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
    return GridView.builder(
      shrinkWrap: true,
      itemCount: mockup.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: !Responsive.isMobile(context) ? 2 : 1,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mockups[index].title,
                style: TextStyle(fontWeight: FontWeight.w500),
                ),
              
              
              Row(
                children: [
                  ElevatedButton(
                    onPressed:() {}, 
                    style: ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.all(10))),
                    child: Text(style:  TextStyle(fontSize: 12), 'Github repo')),

                  SizedBox(width: 5,),
    
                  ElevatedButton(
                    onPressed:() {}, 
                    style: ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.all(2))),
                    child: Text(style:  TextStyle(fontSize: 12), 'Demo'),

                    ),
                ],
              ),
              
              // SegmentedButton(
              //   segments: [
              //     ButtonSegment(value: 1),
              //     ButtonSegment(value: 1),

              //   ], 
              //   selected: Set())
                
            ],
          ),
        ),
      ),

      );
  }
}

class MockupModel {
  final String assetString;
  final String title;
  MockupModel ({required this.assetString, required this.title});
}