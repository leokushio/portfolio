import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier{
  String language = 'rus';

  void toEng (){
    language = 'eng';
    // print(language);
    notifyListeners();
  }
  void toRus (){
    language = 'rus';
    // print(language);
    notifyListeners();
  }
}