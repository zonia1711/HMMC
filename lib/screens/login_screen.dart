
import 'package:disenos/widgets/containerlogin_screen.dart';
import 'package:disenos/widgets/inicio_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
        
                  SizedBox(height: 40,),

                  ContainerLogin(
                    child: Column(
                      children: [
                        Image(image: AssetImage('assets/hinol.png'), height: 150,width: 150,),
                        SizedBox( height: 10,),
                        Text('Iniciar Sesion', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(height: 30,),
                        MyCustomForm()

                      ]
                    )),
                
                ],
              ),
            )),
         ),
    );
      

}}


class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      child:Form(
        child: Column(
          children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),     
                    child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder( 
                    borderSide: BorderSide(width: 3, color:Colors.blue),
                    borderRadius: BorderRadius.circular(20)
                    ),
                      labelText: 'Usuario' ), ), 
                   ),

              Padding(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                  child: TextField(decoration: InputDecoration(
                  border: OutlineInputBorder( 
                  borderSide: BorderSide(width: 3, color:Colors.blue),
                  borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'Contraseña' ),   )  
                    
                   ),
                   SizedBox(height: 30,),
               Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      ElevatedButton(
                      onPressed: (){},
                          child: Text('Iniciar Seción'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color.fromARGB(255, 33, 82, 243) ),),
                            SizedBox(height: 40,)
    ],
    ),
      //         Container(
      //             child: Column(
      //             mainAxisAlignment: MainAxisAlignment.end,
      //             children: [
      //               Transform.translate(offset: Offset(120, 100)),
      //             Image(image:AssetImage('assets/jinvertido.png'), height: 100,width: 130,)
      //                     ],
      // ),
      //  ),
         ],
       )
     )
    );
  }
}




