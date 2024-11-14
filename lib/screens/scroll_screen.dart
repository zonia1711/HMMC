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
          Page1(),
        
          ],
         ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        //Background image
        Background(),
    
        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 30,fontWeight:FontWeight.w900, color:Color.fromARGB(255, 10, 10, 10),shadows: [
      Shadow(
        offset: Offset(2.0, 2.0),
        blurRadius: 1.0,
        color: Color.fromARGB(255, 159, 175, 221)
      )
    ]);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/hinol.png',height: 110,width: 150,alignment: Alignment(0, 2.0),),
          const SizedBox(height: 50,),
          const Text('Hino Motors ',style: textStyle,),
          const Text(' Manufacturing S.A.S',style: textStyle,
          ),
           Transform.translate(offset: const Offset(-10, 60),
           child: const Image(image: AssetImage('assets/japones.png'),height: 190,width: 190,)),
            Expanded(child:Container()),
            Page2()
          // const Icon(Icons.keyboard_arrow_down,size: 70,color: Color.fromARGB(255, 65, 54, 54),),


        ],
      ), 
    );
  }
}

class Background extends StatelessWidget {

  const Background({super.key});

 
  @override
  Widget build(BuildContext context) {
       return Container(
      color: const Color.fromARGB(255, 247, 247, 247),
      height: double.infinity,
      alignment: Alignment.topCenter,
    //  child: const Image(image: AssetImage('assets/scroll-1.png'))
      );
  }
}

 class Page2 extends StatelessWidget {
  const Page2({super.key});

//Boton ingresar
//Boton ingresar
  @override
  Widget build(BuildContext context) {
    //   const textStyle = TextStyle(fontSize: 20,fontWeight:FontWeight.w900, color:Color.fromARGB(255, 10, 10, 10),shadows: [
    //   Shadow(
    //     offset: Offset(2.0, 2.0),
    //     blurRadius: 1.0,
    //     color: Color.fromARGB(255, 159, 175, 221)
    //   )
    // ]);
    return Container(
      color: Color.fromARGB(255, 248, 247, 243),
     
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
        onPressed: ()=>Navigator.pushNamed(context,'login'), 
        child: Text('Ingresar', style: TextStyle(fontWeight: FontWeight.bold),),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.blue,
        ),
      ),

      SizedBox(width: 20,),

      ElevatedButton(
        onPressed: ()=> Navigator.pushNamed(context, 'registrarse'),
        child: Text('Registrarse'),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,

        ),
      ),
    ],
  )
 );   
  }
}

class ImageWithText extends StatelessWidget{
  final String imagePath;
  final double width;
  final double height;

  ImageWithText({
    required this.imagePath,
     required this.width, 
     required this.height});
  
  @override
  Widget build(BuildContext context) {
return Column(
  children: [
    Image.asset(imagePath,
    width:width,
    height: height,
    ),
    SizedBox(height: 10,),
   
  ],
);
  }
}








