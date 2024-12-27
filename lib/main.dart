import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:house_rent/providers/grid_provider.dart';
import 'package:house_rent/widget/bottom_navigator.dart';
import 'package:house_rent/widget/custom_appbar.dart';
import 'package:house_rent/widget/grid.dart';
import 'package:house_rent/widget/searchbar.dart';
import 'package:house_rent/widget/welcome.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_)=> GridProvider()),
                  ChangeNotifierProvider(create: (_)=>ListProvider())],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    bool showNav = screenwidth < 700;
    return Scaffold(
      appBar: CustomAppbar(),
      body: SingleChildScrollView(  // Ensure the body is scrollable
        child: Padding(
          padding: const EdgeInsets.all(8.0),  // Add padding for space
          child: Column(  // Wrap the content in a Column to align properly
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeText(),
              SizedBox(height: 10.0),
              Search(),
              SizedBox(height: 10.0),
              Grid(),  // This will remain scrollable
            ],
          ),
        ),
      ),
      bottomNavigationBar: showNav ? BottomNv() : null,
    );
  }
}
