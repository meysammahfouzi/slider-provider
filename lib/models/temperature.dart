import 'package:flutter/material.dart';

class Temperature extends ChangeNotifier {
  double _value = 20;

  double get value => _value;

  set value(double value) {
    _value = value;
    notifyListeners();
  }
}
