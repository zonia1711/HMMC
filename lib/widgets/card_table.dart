import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
         _SingleCard(color: Color.fromARGB(255, 17, 67, 231),icon: Icons.border_all,text: 'Partes', onPressed: '',),
         _SingleCard(color: Color.fromARGB(255, 40, 72, 75),icon: Icons.car_crash,text: 'Subensamble', onPressed: '',), 
          ]
        ),
    
         TableRow(
          children: [
         _SingleCard(color: Color.fromARGB(255, 177, 68, 5),icon: Icons.add_shopping_cart_rounded,text: 'Compras', onPressed: '',),
         _SingleCard(color: Color.fromARGB(255, 183, 113, 204),icon: Icons.vpn_lock_outlined,text: 'CEO', onPressed: '',), 
          ]
        ),
    
         TableRow(
          children: [
         _SingleCard(color: Color.fromARGB(255, 137, 136, 209),icon: Icons.calendar_month_rounded,text: 'Produccion', onPressed: '',),
         _SingleCard(color: Color.fromARGB(255, 7, 137, 224),icon: Icons.vpn_key_rounded,text: 'IT', onPressed: '',), 
          ]
        ),
    
         TableRow(
          children: [
         _SingleCard(color: Color.fromARGB(255, 17, 67, 231),icon: Icons.calendar_month_rounded,text: 'Coporativos', onPressed: '',),
         _SingleCard(color: Color.fromARGB(255, 7, 110, 28),icon: Icons.share,text: 'RRHH', onPressed: '',), 
          ]
        ),
        
      ],
    );
  }
}
class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;
  final String onPressed;

  const _SingleCard({

    required this.icon, 
    required this.color, 
    required this.text, 
    required this.onPressed

    }
    );

  @override
  Widget build(BuildContext context) {
    var column = Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Image(image: AssetImage('assetName'),),
              CircleAvatar(
                backgroundColor: color,
                radius: 30,
                child: Icon(icon,size: 30,color: Colors.white,), //Se forzan los iconos a blanco
              ),
          
              const SizedBox(height: 10,),
        
              Text(text,style: TextStyle(color: color,fontSize: 18,fontWeight: FontWeight.bold),)
              ],
            );
    return _CardBackground(child: column);
  }
}


class _CardBackground extends StatelessWidget {

   final Widget child;

  const _CardBackground({
    required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
        child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
         child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX:5, sigmaY:5),
          child: Container(
          
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(206, 172, 226, 0.8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

class CircleBackground extends StatelessWidget {
  const CircleBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: CircleAvatar(
        backgroundColor: Colors.green,
        radius: 20,

      ),
    );
  }
}