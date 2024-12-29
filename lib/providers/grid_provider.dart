

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
  final List<Map<String, String>> _names = [];

  List<Map<String, String>> get names {
    return _names;
  }

  void addItems(String addNames, String addImages, String addAddress){
    _names.add({'name':addNames,'image':addImages,'address':addAddress});
    notifyListeners();
  }
}

class ImageProviderView extends ChangeNotifier{
  final List<String> _image = [];
  List<String> get image => _image;

  void addImage(String newImage){
    _image.add(newImage);
    notifyListeners();
  }
}