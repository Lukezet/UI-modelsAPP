import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(left: 25,right:25,top:45,bottom: 20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
    
            Text('Classify transaction',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 10),
            Text('Classify this transaction into a \n particular category',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white))
          ],
        )
      ),
    );
  }
}