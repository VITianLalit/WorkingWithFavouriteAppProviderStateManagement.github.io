import 'package:flutter/material.dart';

class SliderProvider with ChangeNotifier{
  double _val = 1.0;
  double get val => _val;

  void setValue(value){
    _val = value;
    notifyListeners();
  }
}
