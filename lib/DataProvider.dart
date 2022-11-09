import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  int age = 40;
  int weight = 40;
  int hight = 75;
  bool isMale = true;

  AgeIncrement() {
    age++;
    notifyListeners();
  }

  AgeDecrement() {
    age--;
    notifyListeners();
  }

  WEIGHTIncrement() {
    weight++;
    notifyListeners();
  }

  WEIGHTDecrement() {
    weight--;
    notifyListeners();
  }

  HightIncrement() {
    hight++;
    notifyListeners();
  }

  HightTDecrement() {
    hight--;
    notifyListeners();
  }
}
