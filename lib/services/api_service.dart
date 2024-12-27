


import 'dart:convert';

import 'package:house_rent/model/api_model.dart';
import 'package:http/http.dart' as http;

class ApiService{
  static const String baseUrl = "http://10.0.0.63:8000/";
  Future<List<GridModel>> fetchGrid() async{
    final response = await http.get(Uri.parse(baseUrl));
    if(response.statusCode == 200){
      final List<dynamic> data = json.decode(response.body);
      return data.map((json)=>GridModel.fromJson(json)).toList();
    }
    else {
      throw Exception('failed to load grids');

    }
  }
}