

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:house_rent/widget/custom_appbar.dart';
import 'package:house_rent/widget/grid.dart';
import 'package:house_rent/widget/searchbar.dart';
import 'package:house_rent/widget/welcome.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  // bool phonePlatform = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: phonePlatform == Platform.isIOS ? Colors.white.withOpacity(0.5) : Colors.white,
      appBar: CustomAppbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SizedBox(height: 10.0,),
            Search(),
            SizedBox(height: 10.0,),
            Grid(),
            SizedBox(height: 10.0)
            // Grid(),


          ],
        ),
      ),
    );
  }
}

