import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house_rent/services/api_service.dart';

import '../model/api_model.dart';

class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  late Future<List<GridModel>> _futureGrid;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureGrid = ApiService().fetchGrid();
    // print(_futureGrid);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _futureGrid,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (snapshot.hasData && snapshot.data!.isEmpty) {
            return Center(
              child: Text('No data available -- '),
            );
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            final grid = snapshot.data!;
            return Container(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                // shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: grid.length,
                itemBuilder: (BuildContext context, index) => Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Stack(
                      children: [
                        Image.network('http://10.0.0.63:8000/${grid[index].image}',fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,),
                        Positioned(
                          bottom: 10,
                            left: 20,
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey.withOpacity(0.5)
                              ),
                                child: Text('${grid[index].name}',style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12),)))
                        
                      ],
                    ),
                  ),
                ),
              ),
            );

          }
          return Center(child: Text('Unexpected Error occured'),);
        },
    );
  }
}
