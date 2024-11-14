import 'package:disenos/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    //Titulo del AppBar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HMMC',
      theme:ThemeData.light() ,
      initialRoute: AppRoutes.initialRoute,
      routes :AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,

     
    );
  }
}

