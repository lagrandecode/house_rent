

import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0,right: 10.0),

      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),

          ),
            hintText: "Search Here...",hintStyle: const TextStyle(color: Colors.black,),
          // prefixIcon: Container(
          //   padding: EdgeInsets.all(15),
          //
          // )
        ),
      ),
    );
  }
}
