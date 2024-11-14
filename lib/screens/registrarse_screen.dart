import 'package:disenos/widgets/inicio_screen.dart';
import 'package:flutter/material.dart';

class Registrarse extends StatelessWidget {
  const Registrarse({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Inicio(),

            SizedBox(height: 20,),

            Text('Registrarse', style: TextStyle(fontSize: 13, color: Colors.blue), ),

            SizedBox(height: 10,),
            // Icon(Icons.keyboard_arrow_down,size: 70,color: Color.fromARGB(255, 65, 54, 54),),
            Transform.translate(offset: Offset(-10, 1000),),
            Image(image: AssetImage('assets/japones.png'), height: 100, width: 100, ),
          ],
        
        ),
        
      )
      );
  }
}