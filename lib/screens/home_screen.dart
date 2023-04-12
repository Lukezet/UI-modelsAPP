import 'package:flutter/material.dart';
import '/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
   
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [

          //Background
          Background(),
          //Background_2(),
          _HomeBody()



        ],
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Titulos
          PageTitle(),

          // Card Table
          CardTable()

        ],
      ),
    );
  }
}