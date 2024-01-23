import 'package:flutter/material.dart';

class StateProvider with ChangeNotifier {
  int count = 0;
  int get getCount => count;
  increamentCount() {
    count++;
    notifyListeners();
  }
}
