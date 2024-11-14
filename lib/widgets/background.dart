import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {

 final boxDecoration = const BoxDecoration(//Se extrae el BoxDecoration a una variable local
    gradient: LinearGradient(
      begin : Alignment.topCenter,
      end   : Alignment.bottomCenter,
      // stops: [0.2,0.8],
      colors: [
        Color.fromARGB(255, 196, 124, 238),
        Color.fromARGB(255, 73, 167, 243)
      ]
      )
   );

  const Background({super.key});

  @override
  Widget build(BuildContext context) {

   //Se envuelve el container en una columna y la columnna se cambia por un stack
    return Stack(
      children: [
        Container(
          //Se aplica el degradado
             decoration: boxDecoration,),

             
          //Caja Rosada -Pink box 
          const Positioned(
            top:-100,
            left: 30,
            child:  _PinkBox(),)
         
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox();

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          gradient: const LinearGradient(
            colors: [Color.fromRGBO(236, 98, 188, 1),
                     Color.fromRGBO(236, 98, 188, 0.5)
            ])
        ),
      ),
    );
  }
}
