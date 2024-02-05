import 'dart:async';

import 'package:flutter/material.dart';

class TimerProvider extends ChangeNotifier {
  late Timer _timer;
  int _seconds = 59;

  int get seconds => _seconds;

  TimerProvider() {
    _timer = Timer.periodic(Duration(seconds: 1), _updateTimer);
  }

  void _updateTimer(Timer timer) {
    if (_seconds > 0) {
      _seconds -= 1;
    } else {
      _timer.cancel();
    }
    notifyListeners();
  }

  void resetTimer() {
    _seconds = 59;
    _timer.cancel(); // Cancel the existing timer
    _timer =
        Timer.periodic(Duration(seconds: 1), _updateTimer); // Restart the timer
    notifyListeners();
  }
}
