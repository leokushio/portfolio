import 'package:flutter/material.dart';
import 'package:portfolio/providers/language_provider.dart';
import 'package:portfolio/util/responsive.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowcaseWidget extends StatelessWidget {
  const ShowcaseWidget({super.key});

  Future<void> goToWebPage(String urlString) async {
   final Uri url = Uri.parse(urlString);
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

  @override
  Widget build(BuildContext context) {
    final List<String> appGithubUrl = [
      'https://github.com/leokushio/portfolio',
      'https://github.com/leokushio/chat_app',
      'https://github.com/leokushio/boxing_timer',
      'https://github.com/leokushio/dailly_jokes',
    ];
    final mockups = <MockupModel>[
      MockupModel(assetString: 'assets/portfolio_mockup.png', title: 'Portfolio App'),
      MockupModel(assetString: 'assets/chatapp_mockup.png', title: 'Chat app'),
      MockupModel(assetString: 'assets/chatapp_mockup.png', title: 'Training Timer'),
      MockupModel(assetString: 'assets/portfolio_mockup.png', title: 'Jokes App'),
    ];
    final lang = context.watch<LanguageProvider>().language;
    return Column(
      children: [
        //--------------------------------------heading
        Padding(
          // key: projectKey,
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.maxFinite,
            child: Text(
              lang == 'eng' ? 'My Projects' : 'Проекты',
              style: const TextStyle(
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
          itemCount: mockups.length,
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
                    style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  
                  
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed:() => goToWebPage(appGithubUrl[index]), 
                        style: const ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.all(10))),
                        child: const Text(style:  TextStyle(fontSize: 12), 'Github repo')),
        
                      const SizedBox(width: 5,),
        
                      ElevatedButton(
                        onPressed:() {}, 
                        style: const ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.all(2))),
                        child: const Text(style:  TextStyle(fontSize: 12), 'Demo'),
        
                        ),
                    ],
                  ),
                    
                ],
              ),
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