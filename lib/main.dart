
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/providers/language_provider.dart';
import 'package:portfolio/providers/scroll_nav_provider.dart';
import 'package:portfolio/providers/theme_provider.dart';
import 'package:portfolio/screens/main_screen.dart';
// import 'package:portfolio/themes/dark_mode.dart';
import 'package:portfolio/themes/theme_modes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider(),),
        ChangeNotifierProvider(create: (context) => LanguageProvider(),),
        ChangeNotifierProvider(create: (context) => ScrollNavProvider(),)
      ],
    child: const MainApp(),
  )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSwitched = context.watch<ThemeProvider>().isSwitched;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isSwitched ? lightMode : darkMode,
      home: const MainScreen(),
    );
  }
}
