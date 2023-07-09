import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  String pageTitle = "";
  String buttonTitle = "";

  void updatePageTitle(String title) {
    pageTitle = title;
    notifyListeners();
  }

  void updateButtonTitle(String title) {
    buttonTitle = title;
    notifyListeners();
  }
}
