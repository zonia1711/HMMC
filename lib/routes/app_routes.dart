import 'package:disenos/models/menu_option.dart';
import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/login_screen.dart';
import 'package:disenos/screens/registrarse_screen.dart';

import 'package:disenos/screens/scroll_screen.dart';
import 'package:disenos/screens/modulos_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {


  static const initialRoute = 'scroll';
 
  static final menuOption = <MenuOption>[
  MenuOption(route: 'login',        name: 'login', screen: Login()),
  MenuOption(route: 'registrarse',  name: 'registro', screen: Registrarse()),
  MenuOption(route: 'modulos',      name:'modulos' , screen: Modulos()),
  MenuOption(route: 'home',         name: 'home', screen: HomeScreen())
];

 static  Map<String, Widget Function(BuildContext)>getAppRoutes(){
   Map<String, Widget Function(BuildContext)> appRoutes ={};
   appRoutes.addAll({'scroll':(BuildContext context)=> const ScrollScreen()});
   for (final option in menuOption){
    appRoutes.addAll({option.route: (BuildContext context)=> option.screen});

   }
   return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context)=> const Scaffold(
        body: Center(
          child: Text('Verificar ruta- Ruta no encontrada'),
        ),
      ),
    );
  }
}