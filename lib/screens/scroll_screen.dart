import 'package:disenos/widgets/containerlogin_screen.dart';
import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
          gradient:LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,

            //Stops: se utiliza para dividir el efecto de la pantalla
            stops: [0.5,0.5],
            colors: [
              Color.fromARGB(255, 250, 250, 250),
              Color.fromARGB(255, 255, 255, 255)
            ])
        );
    return Scaffold(
      body:Container(
        decoration: boxDecoration,
        
         child: PageView(
         physics: const BouncingScrollPhysics(),
         scrollDirection: Axis.vertical,
         children: const [
          
                  ContainerLogin(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image(image: AssetImage('assets/hinol.png'), height: 150,width: 150,),
                          SizedBox( height: 20,),
                          Text('Hino Motors Manufacturing S.A.S', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10,),
                          Page2()
                                         
                        ]
                      ),
                    )),
          ],
         ),
      ),
    );
  }
}


 class Page2 extends StatelessWidget {
  const Page2({super.key});

//Boton ingresar
  @override
  Widget build(BuildContext context) {
 
    return Container(
      color: Color.fromARGB(143, 245, 242, 242),
      child: SingleChildScrollView(
        child: Column(
          children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Transform.translate(
            offset: const Offset(-10, 60),
            child: const Image(
              image: AssetImage('assets/japones.png'),
              height: 190,
              width: 190,
        ),
            ),
          ],
        ),
        SizedBox(height: 90,),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'login'),
              child: Text(
                'Ingresar',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
            ),
        
        SizedBox(width: 40,),
        
        ElevatedButton(
          onPressed: ()=> Navigator.pushNamed(context, 'registrarse'),
          child: Text('Registrarse'),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
            ),
          ],
        ),
          ],
        ),
      ),
    );
  }
}








