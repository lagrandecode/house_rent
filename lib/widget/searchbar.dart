

import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0),

          )
            hintText: "Search Here...",
          prefixIcon: Container(
            padding: EdgeInsets.all(15),

          )
        ),
      ),
    );
  }
}
