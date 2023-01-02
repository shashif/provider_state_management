import 'package:flutter/material.dart';

class SettingController extends ChangeNotifier {
  int _sizeCount = 0;

  int get sizeCounter=> _sizeCount;

  void increment() {
    _sizeCount +=3;
    notifyListeners();
  }

  void deccrement() {
    _sizeCount-=3;
    notifyListeners();
  }
}
