import 'package:flutter/material.dart';

class ContainerLogin extends StatelessWidget {

  final Widget child;

  const ContainerLogin({super.key, 
    required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 450),
      child: Container(
            width: double.infinity,
           padding: EdgeInsets.all(20),
            decoration: _createCardShape(),
            child: this.child,
          ),
    );
  }

  BoxDecoration _createCardShape()  => BoxDecoration(
    color: const Color.fromARGB(255, 255, 255, 255),
    borderRadius: BorderRadius.circular(25),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 15,
        offset: Offset(0,0)
      ),
      
    ]
        
      );
  }
