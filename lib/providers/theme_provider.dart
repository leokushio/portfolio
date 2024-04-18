import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  bool isSwitched = false;

  void switchTheme() {
    isSwitched = !isSwitched;
    notifyListeners();
  }
}