import 'package:flutter/material.dart';

class CustomBottonNavigation extends StatelessWidget {
  const CustomBottonNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
           showSelectedLabels: true,
           showUnselectedLabels: false,

          selectedItemColor:const Color.fromARGB(255, 105, 107, 107),
          backgroundColor: const Color.fromARGB(55, 205, 163, 221),
          unselectedItemColor:  const Color.fromARGB(116, 117, 125, 1),
          currentIndex: 0,
      items: [
        BottomNavigationBarItem(
      
          icon: FloatingActionButton(onPressed: ()=>Navigator.pop(context),
          child: const Icon(Icons.west)),
          label: 'Regresar'),
          // ),
          //     BottomNavigationBarItem(
          // icon: Icon(Icons.west),
          // label: 'Grafica'
          // ),
        BottomNavigationBarItem(
          icon: FloatingActionButton(
            onPressed: ()=> Navigator.pushNamed(context, 'scroll'),
          child: const Icon(Icons.logout)),
          label: 'Salir'
          ),
      ])
      ;
  }
}