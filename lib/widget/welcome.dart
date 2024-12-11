

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house_rent/model/colors.dart';

class WelcomeText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello Oluwaseun"),
          Text("Find your sweet home",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20
          ),),
        ],
      ),
    );
  }
}
