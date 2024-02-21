import 'package:flutter/material.dart';

class ParkingProvider extends ChangeNotifier {
  bool _isCarParked = true;
  bool get isCarParked => _isCarParked;

  void setCarParked(bool value) {
    _isCarParked = value;
    notifyListeners();
  }
}
