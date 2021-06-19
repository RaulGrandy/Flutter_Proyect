import 'package:flutter/material.dart';


class resistencia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      
      //body: Container(
        
        color: Color(0xC70B4EA5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            Text(
              'Resistencia',
              style:  Theme.of(context).textTheme.headline1,
            ),
            Image.asset('assets/imgs/res.png'),
            Column(
              children:<Widget>[
            
            Text(
              'La resistencia es una medida de la oposición al flujo de corriente en un circuito eléctrico.La resistencia se mide en ohmios, que se simbolizan con la letra griega omega (Ω). Se denominaron ohmios en honor a Georg Simon Ohm (1784-1854), un físico alemán que estudió la relación entre voltaje, corriente y resistencia. Se le atribuye la formulación de la ley de Ohm',
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