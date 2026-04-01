import 'package:flutter/material.dart';

class PlayerProvider extends ChangeNotifier {

  String name = "";
  String playerClass = "";
  String pet = "";

  void setPlayer(String n, String c, String p) {
    name = n;
    playerClass = c;
    pet = p;
    notifyListeners();
  }

}