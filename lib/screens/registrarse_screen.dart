import 'package:disenos/widgets/inicio_screen.dart';
import 'package:flutter/material.dart';

class Registrarse extends StatelessWidget {
  const Registrarse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Inicio(),
                SizedBox(height: 20,),

                CustomField()
                ], ),
                   ), ), 
                   ));
  }
}

class CustomField extends StatelessWidget {
  const CustomField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Registrarse', style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold),),


        Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: TextField(decoration: InputDecoration(
          border: OutlineInputBorder( 
            borderSide: BorderSide(width: 3, color:Colors.blue),
            borderRadius: BorderRadius.circular(20)),
          labelText: 'Nombre'),
        ),
        ),

        Padding(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
         child: TextField(decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.blue),
            borderRadius: BorderRadius.circular(20)),
            labelText: 'Apellido'),
        ),
        ),

        Padding(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
         child: TextField(decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.blue),
            borderRadius: BorderRadius.circular(20),),
            labelText: 'Email' ),
            ),
            ),

        Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
           child: TextField(decoration: InputDecoration(
           border: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.blue),
            borderRadius: BorderRadius.circular(20),),
            labelText: 'Empresa'),
         ),
         ),

        Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: TextField(decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.blue),
            borderRadius: BorderRadius.circular(20),),
            labelText: 'Empresa'),
            ),
            ),

       Padding(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
        child: TextField(decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 8, color: Colors.blue),
            borderRadius: BorderRadius.circular(20),),
            labelText: 'Nit'),
            ),
            ),
       Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
       child: TextField(decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 3,color: Colors.blue),
          borderRadius: BorderRadius.circular(20),),
        labelText: 'Telefono'),
        ),
        ),
        Column(
          children: [
            ElevatedButton(onPressed: () {},
             child: Text('Registrarse'),
             style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 33, 82, 243)
             ),)
          ],
        ),
          
      ],
    );
  }
}