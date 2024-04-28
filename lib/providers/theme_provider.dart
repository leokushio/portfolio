import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  bool isSwitched = false;
  int isSelected = 0;

  void switchTheme() {
    isSwitched = !isSwitched;
    notifyListeners();
  }
  void switchButton(int index){
    isSelected = index;
    notifyListeners();
  }
}