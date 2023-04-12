

import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ContactDash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Background_2(),

          SingleChildScrollView(child: BlurCard())
          


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

    final Map<String,String> formValues={
      'first_Name': 'Lucas',
      'last_Name' : 'Yañez',
      'email'     : 'lucas@gmail.com',
      'password'  : '123456',
      'role'      :  'Admin'
    };
    
    
    return Container(
      margin: EdgeInsets.symmetric(vertical:170,horizontal: 25),
      child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
      child: Container(
        height: 450,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(25)),
          child:  Container(
        margin: const EdgeInsets.only(left: 25,right:25,top:45,bottom: 20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
    
            Text('Welcome to a new Dashboard',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height:70),
            Text('Please send us your email so we can contact you',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white)),
            SizedBox(height: 20),
            CustomInputField( labelText: 'Email', hintText: 'ingrese su Email', emailKeyboard: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(238, 85, 181, 0.9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
                  child:  const SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Center(child: Text('Send',style: TextStyle(fontSize: 16),))),
                  onPressed: (){FocusScope.of(context).requestFocus( FocusNode() );},
                  )
],
)
),
)
)
),
);
}
}