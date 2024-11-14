import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
   
  const BasicDesingScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child:  Column(
        children: [
          const Image(image:AssetImage('assets/hinol.png')),

          //Texto del titulo
          const Title(),

          //Button Section
          const ButtonSection(),

          //Description
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: const Text('Hino Motors Colombia .Uno para cada nesecidad'),)
        ],
      )
    );
  }
}


class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Row(
                   children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[ 
                        Text('Pruebas de diseño Hino',style: TextStyle(fontWeight:FontWeight.bold ),),
                        Text('Hino-Toyota',style: TextStyle(color: Colors.black45),),
                ],
              ),

              Expanded(child:Container()),
               const Icon(Icons.star,color: Colors.red,),
               const Text('41°')
      
      
        ],
      ),
    );
  }
}
class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustonButton(icon: Icons.call,text: 'Call', onPressed: '',),
          CustonButton(icon: Icons.map_sharp,text: 'Route', onPressed: '',),
          CustonButton(icon: Icons.share,text: 'Share', onPressed: '',),
            
        ],
      ),
    );
  }
}

class CustonButton extends StatelessWidget {

  final IconData icon;
  final String text; 
  
  const CustonButton({
    super.key, 
    required this.icon, 
    required this.text, required String onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
           Icon(icon,color: Colors.blue, size: 35,),
           Text(text,style: const TextStyle(color: Colors.blue),),
      ],
    );
  }
}
