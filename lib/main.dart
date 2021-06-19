

import 'package:flutter/material.dart';
import 'package:flutter_projecto/screens/Splash_screen.dart';
import 'package:flutter_projecto/screens/main_screen.dart';

import 'package:flutter_projecto/temas/Proto.dart';
import 'package:flutter_projecto/temas/Capa.dart';
import 'package:flutter_projecto/temas/Resistencia.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primaryColor: Color(0xFF5F5FFF),
        accentColor:  Color(0XFF030047),
        highlightColor: Color(0xFFB7B7D2),
        textTheme: TextTheme(
        
        headline5: TextStyle(
        fontSize: 36.0,
        fontWeight:  FontWeight.bold,
        color: Color(0xFFD9D8EB),
        ),
        headline1: TextStyle(
          fontSize: 36.0,
          fontWeight:  FontWeight.bold,
          color: Color(0xff030047),
        ),
        headline2: TextStyle(
          fontSize: 36.0,
          fontWeight:  FontWeight.bold,
          color: Color(0xFFB9C4D3),
        ),
        
        headline3: TextStyle(
          fontSize: 20.0,
          fontWeight:  FontWeight.bold,
          color: Color(0xFFF1F1F1),
        ),
        headline4: TextStyle(
          fontSize: 20.0,
          fontWeight:  FontWeight.bold,
          color: Color(0xFFB9C4D3),
        ),
        headline6: TextStyle(
          
          fontSize: 15.0,
        
          color: Color(0xFFF1F1F1),
        ),
        ),
      ),
      routes:{
        '/Home':(context)=>SplashScreen(),
        '/opc1':(context)=>Mainscreen(),
        '/res':(context)=>resistencia(),
        '/pro':(context)=>proto(),
        '/capa':(context)=>capa(),
        },
        initialRoute: '/Home',
        
      
    );
  }
}