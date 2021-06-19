import 'package:flutter/material.dart';


class proto extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      
      //body: Container(
        
        color: Color(0xC70B4EA5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            Text(
              'Protoboard',
              style:  Theme.of(context).textTheme.headline1,
            ),
            Image.asset('assets/imgs/Pro.png'),
            Column(
              children:<Widget>[
            
            Text(
              'Una placa de pruebas o placa de inserción               (en inglés Protoboard o Breadboard) es un tablero con orificios que se encuentran conectados eléctricamente entre sí de manera interna, habitualmente siguiendo patrones de líneas, en el cual se pueden insertar componentes electrónicos y cables para el armado y prototipado de circuitos electrónicos y sistemas similares. Está hecho de dos materiales, un aislante, generalmente un plástico, y un conductor que conecta los diversos orificios entre sí. Uno de sus usos principales es la creación y comprobación de prototipos de circuitos electrónicos antes de llegar a la impresión mecánica del circuito en sistemas de producción comercial.',
              style:  Theme.of(context).textTheme.headline6,
            ),
            ]
            ),
            MaterialButton(
              elevation: 8.0,
              minWidth: 10.0,
              height: 30.0,
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0) ),
              child: Text(
                'Ver otro temas',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0
                ),
                ),
              onPressed: (){
                Navigator.of(context).pushNamed('/opc1');
                  
                  
              },
            ),
          ],
        ),
     // ),
    );
  }
}