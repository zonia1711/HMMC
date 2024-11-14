import 'package:disenos/widgets/inicio_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(   
          // title: Center(child: Text('Iniciar Sesión'))
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Inicio(),

                  SizedBox(height: 40,),
                  MyCustomForm()
                ],
              ),
            )),
         ),
    );
      
    
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text('Iniciar Seción', style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold),),
        // Padding(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
        // child: TextField( decoration: InputDecoration(
        //   border: OutlineInputBorder(
            
        //   ),
        //   hintText: 'Usuario'
        // ),
        // ),
        // ),

        Padding(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
        child: TextField(decoration: InputDecoration(
          border: OutlineInputBorder( 
            borderSide: BorderSide(width: 3, color:Colors.blue),
            borderRadius: BorderRadius.circular(20)
          ),
          labelText: 'Usuario'
        ),
        ),
        ),
        
      Padding(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
        child: TextField(decoration: InputDecoration(
          border: OutlineInputBorder( 
            borderSide: BorderSide(width: 3, color:Colors.blue),
            borderRadius: BorderRadius.circular(20)
          ),
          labelText: 'Contraseña'
        ),
        ),
        ),

      Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: (){}, 
            child: Text('Iniciar Seción'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue
            ),)
        ],
      ),
 
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Transform.translate(offset: Offset(120, 100)),
          Image(image:AssetImage('assets/jinvertido.png'), height: 400,width: 130,)
          ],
        ),
      ),
   
      ],
    );
  }
}