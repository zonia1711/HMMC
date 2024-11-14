import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle= TextStyle(fontSize: 20,fontWeight: FontWeight.w900, color:Color.fromARGB(255, 0, 0, 0), 
    shadows: [
      Shadow(
        offset: Offset(1.0, 1.0),
        blurRadius: 1.0,
         color: Color.fromARGB(255, 13, 13, 14)
      )

     ] );

  return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/hinol.png', height: 110,width: 150,alignment: Alignment(0, 0.1)),
          SizedBox(height: 10,),
          const Text('Hino Motors ',style: textStyle,),
          const Text(' Manufacturing S.A.S',style: textStyle,
          
          ),
        ],
      ),
    );
  }
}