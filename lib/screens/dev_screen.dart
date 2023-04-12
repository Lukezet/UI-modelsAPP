

import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class DevScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Background_2(),

           BlurCard()
          


        ],
      ),
    );
  }
}

class BlurCard extends StatelessWidget {
  const BlurCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {


    
    
    return Container(
      margin: EdgeInsets.symmetric(vertical:170,horizontal: 25),
      child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
      child: Container(
        height: 800,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(25)),
          child:  Container(
        margin: const EdgeInsets.only(left: 25,right:25,top:45,bottom: 20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
    
            Text('Develop & Design\nby:',textAlign: TextAlign.center,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 30),
            Image.asset('assets/logo LY2 SinFONDO.png',height: 250,width: 250,),
            
            
],
)
),
)
)
),
);
}
}