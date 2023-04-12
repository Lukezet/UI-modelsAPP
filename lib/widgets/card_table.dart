import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Table(
        children: const [
          TableRow(children: [
            _SingleCard(icon: Icons.ac_unit_rounded, text: 'Winter',color1: Color.fromARGB(255, 206, 231, 255),color2: Color(0xff45a7f5),),
            _SingleCard(icon: Icons.air_outlined, text: 'Autmn',color1: Color(0xffe9e1f6),color2: Color(0xff9a62ff),), 
    ]),
          TableRow(children: [
            _SingleCard(icon: Icons.wb_sunny_outlined, text: 'Summer',color1: Color.fromARGB(255, 250, 225, 255), color2: Color(0xffe33aff),),
            _SingleCard(icon: Icons.spa_outlined, text: 'Spring',color1: Color(0xffffdfb1), color2: Color.fromARGB(255, 255, 148, 48),), 
    ]),
          TableRow(children: [
            _SingleCard(icon: Icons.travel_explore, text: 'Travel',color1: Color.fromARGB(255, 192, 201, 252),color2: Colors.indigoAccent),
            _SingleCard(icon: Icons.attach_money_rounded, text: 'Prices',color1: Color.fromARGB(255, 222, 255, 235),color2: Color.fromARGB(255, 82, 231, 89),), 
    ]),
          TableRow(children: [
            _SingleCard(icon: Icons.double_arrow_rounded, text: 'Free',color1: Color.fromARGB(255, 255, 188, 210),color2: Color.fromARGB(255, 236, 61, 119)),
            _SingleCard(icon: Icons.key, text: 'Key',color1: Color.fromARGB(255, 252, 253, 209),color2: Color.fromARGB(255, 15, 15, 15),), 
    ])
        ],
        ),
    );
  }
}

        
        

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final String text;
  final Color color1;
  final Color color2;

  const _SingleCard({super.key,

  required this.icon, 
  required this.text, 
  required this.color1, 
  required this.color2
  
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(25)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: RadialGradient(
                colors: [this.color1, this.color2],
                center: Alignment.topLeft,
                radius: 0.7,
              )
              
        ),
                  child: Icon(this.icon, size:40,color: Colors.white,),
                ),
                
                Text(this.text,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: this.color2),)
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}
