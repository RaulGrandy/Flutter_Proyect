
import 'package:flutter_projecto/components/temas_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projecto/temas/Tema.dart';
import 'package:flutter_projecto/temas/informacion.dart';

import '../components/temas_carousel.dart';


class Mainscreen extends StatelessWidget {

  List<Tema> tustemas = [
    Tema(
      
      nombre: 'Resistencia',
      urlimagen: '',
      informacion: Informacion(
          
          urlimagen: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD6FOqurQwva6JBDWQtvg4YhCDl1x2hEZ1GA&usqp=CAU',
          nombre:'Resistencia',
          pantalla: '/res'
      ),
      
      ),
      
    Tema(
      
      nombre: 'Capacitor',
      urlimagen: '',
      informacion: Informacion(
          
          urlimagen: 'https://comofunciona.co.com/wp-content/uploads/2016/09/Capacitor.jpg',
          nombre:'Capacitor',
          pantalla: '/capa'
      ),
    ),
    Tema(
      
      nombre: 'ProtoBoard',
      urlimagen: '',
      informacion: Informacion(
          
          urlimagen: 'https://angelmicelti.github.io/4ESO/EAN/Protoboard.png',
          nombre:'ProtoBoard',
          pantalla: '/pro',
      ),
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Container(
        
        
        color: Color(0xFF030D14),
        child: ListView(
          children: <Widget>[
            
            _customApp(),
            _textsheader(context),
            _temes(context),
            
          ],
        ),
      ),
    );
  }
  Widget _customApp(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0,vertical:5.0),
      child: Row(
        children: <Widget>[
          /*IconButton(
            iconSize: 40.0,
            icon:Icon(Icons.settings),
            onPressed: (){},
          ),*/
          
        ],
      ),
    );
  }

  Widget _textsheader(context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
      child: Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: <Widget>[

        Text('Seleccione ',
        style:  Theme.of(context).textTheme.headline3,
        ),
        Text('El tema que guste ',
        style:  Theme.of(context).textTheme.headline3,
        ),
         /*MaterialButton(
            
              elevation: 10.0,
              minWidth: 20.0,
              height: 15.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0) ),
              child: Text(
                'Leer Mas',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
                ),
              onPressed: (){
                Navigator.of(context).pushNamed('/resistencias');
              },
            ),
            MaterialButton(
            
              elevation: 10.0,
              minWidth: 20.0,
              height: 15.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0) ),
              child: Text(
                'Leer Mas',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
                ),
              onPressed: (){
                Navigator.of(context).pushNamed('/resistencias');
              },
              
            ),
            MaterialButton(
            
              elevation: 10.0,
              minWidth: 20.0,
              height: 15.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0) ),
              child: Text(
                'Leer Mas',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
                ),
              onPressed: (){
                Navigator.of(context).pushNamed('/Home');
              },
              
            ),*/
            
      ],
      
      ),
      
    );
    
  }

  Widget _temes(context){
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child : Text(
        'Temas',
        style: Theme.of(context).textTheme.headline3,
        )
        
        ),
        temascarousel(this.tustemas),
       
      ],
    );

  }
}
