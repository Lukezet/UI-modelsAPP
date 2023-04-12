
import 'package:basic_ui/screens/contactdash_screen.dart';
import 'package:basic_ui/screens/home_screen.dart';
import 'package:basic_ui/screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //* PARA cambiar el color de la barra superior que viene por defecto use el sig comando:
    //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(statusBarColor:const Color(0xFFFF9000),statusBarBrightness: Brightness.light ),);

    return  MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Material App',
      theme: ThemeData(
  fontFamily: 'Raleway'),
      initialRoute: 'login_screen',
      routes: {
        'login_screen': ( _ ) => LoginScreen(),
        'main_screen' : ( _ ) => MainScreen(),
        'home_screen'   : ( _ ) => HomeScreen(),
        'contactdash_screen' : ( _ ) => ContactDash(),
      },
    );
  }
}

