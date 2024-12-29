import 'package:flutter/material.dart';
import 'package:house_rent/providers/grid_provider.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ListProvider>(
        builder: (context, value, child) {
          return ListView.builder(
              itemCount: value.names.length,
              itemBuilder: (context, _) => ListTile(
                    title: Text(value.names[_]['address']!)
                    ),
                  );
        },
      ),
    );
  }
}
