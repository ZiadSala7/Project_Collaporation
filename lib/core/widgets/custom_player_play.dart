import 'package:flutter/material.dart';

class CustomPlayerPlay extends StatelessWidget {
  const CustomPlayerPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Column(children: [
          Slider(value: 5,
          min: 0,
          max: 10,
          onChanged: (value){},),
        ],),
      ),
    );
  }
}