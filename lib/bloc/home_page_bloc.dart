import 'package:flutter/material.dart';

class HomePageBloc extends ChangeNotifier{
  int _currentIndex = 0;
  ///Getter methods
  get getCurrentIndex =>_currentIndex;
  ///Setter methods
  set setCurrentIndex(index){
    _currentIndex = index;
    notifyListeners();
  }
}