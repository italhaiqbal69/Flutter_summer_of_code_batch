import 'package:flutter/material.dart';

class FavrtProvider with ChangeNotifier {
  List<String> _favrtList = [];

  List<String> get favrtList => _favrtList;

  void addToFavrt(String item) {
    _favrtList.add(item);
    notifyListeners();
  }

  void removeFromFavrt(String item) {
    _favrtList.remove(item);
    notifyListeners();
  }
}
