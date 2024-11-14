
import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/custom_botton_navigation.dart';
import 'package:disenos/widgets/inicio_screen.dart';
import 'package:disenos/widgets/page_title.dart';
import 'package:flutter/material.dart';
import '../widgets/background.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          const Background(),

          //Home body
          _HomeBody()

        ],
      ),
      bottomNavigationBar: const CustomBottonNavigation(),
    
    );
  }
}

class _HomeBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Inicio(),

          //Titulos
          PageTitle(),

          //Card table
          CardTable()

        ],
      ),
    );
  }
}