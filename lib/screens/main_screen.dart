import 'package:basic_ui/screens/contactdash_screen.dart';
import 'package:basic_ui/screens/dev_screen.dart';
import 'package:basic_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final screens=[HomeScreen(),ContactDash(),DevScreen()];

    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        //showSelectedLabels: false, //*Para mostrar o no el label del bottomnavigatorBAr
        currentIndex: selectedIndex,
        onTap:(newSelection) {
          setState(() {
            selectedIndex = newSelection;
          });
        },
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Color.fromRGBO(116, 117, 157, 1),
        backgroundColor: Color.fromRGBO(55, 57, 84, 1),
        items: const [
    
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined),
          label:'Calendar',
          //activeIcon: Icon(Icons.flutter_dash_outlined)//*PARA CAMBIAR DE ICONO CUANDO PULSAS
        ),
    
        BottomNavigationBarItem(
          icon: Icon(Icons.speed_outlined),
          label:'Speed'
        ),
    
        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt_outlined),
          label:'Manage'
          
        )]),
    );
  }
}