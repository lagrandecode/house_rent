

import 'package:flutter/cupertino.dart';

class GridProvider extends ChangeNotifier{
  String _name = '';

  String get name => _name;
  void setName(String newName){
    _name = newName;
    notifyListeners();
  }
}

class ListProvider extends ChangeNotifier{
  final List<String> _names = [];

  List<String> get names {
    return _names;
  }

  void addName(String addNames){
    _names.add(addNames);
    notifyListeners();

  }
}