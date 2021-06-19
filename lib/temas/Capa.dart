import 'package:flutter/material.dart';


class capa extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      
      //body: Container(
        
        color: Color(0xC70B4EA5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            Text(
              'Capacitor',
              style:  Theme.of(context).textTheme.headline1,
            ),
            Image.asset('assets/imgs/Cap.png'),
            Column(
              children:<Widget>[
            
            Text(
              'Un capacitor o también conocido como condensador es un dispositivo capaz de almacenar  energía a través de campos eléctricos (uno positivo y uno negativo). Este se clasifica dentro de los componentes pasivos ya que no tiene la capacidad de amplificar o cortar el flujo eléctrico Los capacitores se utilizan principalmente como filtros de corriente continua, ya que evitan cambios bruscos y ruidos en las señales debido a su funcionamiento.',
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