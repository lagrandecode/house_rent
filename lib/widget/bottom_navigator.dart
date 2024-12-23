import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNv extends StatefulWidget {
  const BottomNv({super.key});

  @override
  State<BottomNv> createState() => _BottomNvState();
}

class _BottomNvState extends State<BottomNv> {
  final List<String> bottom = ['Home', 'Rent', 'Account', 'Profile'];
  int tapIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          bottom.length,
          (index) => GestureDetector(
            onTap: () => setState(() {
              tapIndex = index;
            }),
            child: Container(
              padding: EdgeInsets.only(left: 15.0,right: 15.0,bottom: 10.0,top: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: tapIndex == index ? Colors.blue.withOpacity(.5) : Colors.transparent
              ),
              child: Text(bottom[index],style: TextStyle(
                color: tapIndex == index ? Colors.red: Colors.black
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
