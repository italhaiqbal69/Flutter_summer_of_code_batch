import 'package:flutter/material.dart';
import 'dart:async';

class CounterProvider with ChangeNotifier {
  double _count = 0;

  double get count => _count;

  int _colorCounter = 0;

  int get colorCounter => _colorCounter;

  Timer? _colorTimer;

  void startAutoColorCycle() {
    _colorTimer = Timer.periodic(Duration(milliseconds: 200), (_) {
      differColor();
      incColorCount();
    });
  }

  void stopAutoColorCycle() {
    _colorTimer?.cancel();
  }

  @override
  void dispose() {
    _colorTimer?.cancel();
    super.dispose();
  }

  void differColor() {
    if (_colorCounter == 0) {
      _color = Colors.orange;
    } else if (_colorCounter == 1) {
      _color = Colors.pink;
    } else if (_colorCounter == 2) {
      _color = Colors.green;
    } else if (_colorCounter == 3) {
      _color = Colors.blue;
    } else if (_colorCounter == 4) {
      _color = Colors.purple;
    } else if (_colorCounter >= 5) {
      _colorCounter = -1;
      _color = Colors.orange;
    }
    notifyListeners();
  }

  void incColorCount() {
    _colorCounter++;
    notifyListeners();
  }

  Color _color = Colors.green;

  Color get color => _color;

  void changeColor(Color color) {
    _color = color;
    notifyListeners();
  }

  void increment() {
    _count += 10;
    notifyListeners();
  }

  void decrement() {
    _count -= 10;
    notifyListeners();
  }
}
