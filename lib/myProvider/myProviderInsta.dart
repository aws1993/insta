import 'package:flutter/material.dart';

class MyproviderInsta with ChangeNotifier{
  bool isColor = false ;
  bool isVal =false ;
  Color backgroundColor ;
  ThemeMode tm =ThemeMode.light;
  void toggal(){
  isColor =!isColor;
  notifyListeners();
  }
  void onChange(bool val){
    isVal =val;
    if(isVal== true){
      tm =ThemeMode.dark;
      backgroundColor =Colors.black;


    }else{
      tm =ThemeMode.light;
      backgroundColor =Colors.white;


    }
    notifyListeners();

  }
}