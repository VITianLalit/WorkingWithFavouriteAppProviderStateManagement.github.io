import 'package:flutter/material.dart';

class FavouriteScreenProvider with ChangeNotifier{
  List<int> _selectedItemList = [];

  List<int> get selectedItemList => _selectedItemList;

  void setList(int item){
    _selectedItemList.add(item);
    notifyListeners();
  }
  void removeList(int item){
    _selectedItemList.remove(item);
    notifyListeners();
  }
}