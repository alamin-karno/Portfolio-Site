import 'package:flutter/material.dart';

class ScreenChangeState extends ChangeNotifier {

  int value = 0;

  void changeScreen(int screen){
    value = screen;
    notifyListeners();
  }

}