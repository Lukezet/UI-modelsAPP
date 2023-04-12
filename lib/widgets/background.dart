import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
final boxDecoration =  BoxDecoration(
       gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.2,0.8],
        colors: [Color(0xff2E305F),
                 Color(0xff202333)]) 
);


  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        //Purple Background
        Container(decoration: boxDecoration),
        //Pink Box
        Positioned(child: _CustomBox(colorBox1:Color.fromRGBO(236, 298, 188, 1), colorBox2:Color.fromRGBO(241, 142, 172, 1)),top: -90,left: -10,)
      ],
    );
  }
}

class _CustomBox extends StatelessWidget {
  
  final Color colorBox1;
  final Color colorBox2;

  const _CustomBox({super.key, 
  required this.colorBox1, 
  required this.colorBox2});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 4,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          gradient: LinearGradient(
            colors: [ colorBox1,
                      colorBox2]
          )
        ),
      ),
    );
  }
}