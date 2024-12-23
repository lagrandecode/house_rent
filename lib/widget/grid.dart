import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house_rent/model/grid_model.dart';

class Grid extends StatelessWidget {
  Grid({super.key});

  final List<GridModel> grid = GridModel.generateGrid();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0,right: 10.0),
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        itemCount: grid.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of items per row
        ),
        itemBuilder: (BuildContext context, int index) => Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
            ),
          ),
          elevation: 4, // Optional: Add some elevation
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
            ),
            child: Image.asset(
              grid[index].images,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
