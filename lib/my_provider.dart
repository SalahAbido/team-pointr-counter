import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  int counterA = 0;

  int counterB = 0;

  void addOnePoint(int team) {
    if (team == 0) {
      counterA = counterA + 1;
    } else if (team == 1) {
      counterB = counterB + 1;
    }
    notifyListeners();
  }

  void addTowPoint(int team) {
    if (team == 0) {
      counterA = counterA + 2;
    } else if (team == 1) {
      counterB = counterB + 2;
    }

    notifyListeners();
  }

  void addThreePoint(int team) {
    if (team == 0) {
      counterA = counterA + 3;
    } else if (team == 1) {
      counterB = counterB + 3;
    }
    notifyListeners();
  }

  void resetCounter() {
    counterA = 0;
    counterB = 0;
    notifyListeners();
  }
}
