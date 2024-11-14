import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin:const EdgeInsets.symmetric(horizontal: 20) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            SizedBox(height: 12,),

            // FloatingActionButton(onPressed: ()=> Navigator.pop(context),
            // child: const Icon(Icons.west,size: 25,color: Color.fromARGB(255, 24, 23, 23))),  
          ],
        ),
      ),
      
    );
  }
}