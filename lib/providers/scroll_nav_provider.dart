import 'package:flutter/material.dart';

class ScrollNavProvider extends ChangeNotifier {

  int isSelected = 0;
  double? dashKeyVisible;

  void switchButton(int index){
    isSelected = index;
    notifyListeners();
  }
}