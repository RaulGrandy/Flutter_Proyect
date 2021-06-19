import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        
        color: Color(0xFF000000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/imgs/img_main.png'),
            Column(
              children:<Widget>[
            Text(
              'Meca',
              style:  Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Bienvenido',
              style:  Theme.of(context).textTheme.headline2,
            ),
            ]
            ),
            MaterialButton(
              elevation: 10.0,
              minWidth: 170.0,
              height: 50.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0) ),
              child: Text(
                'Press Start',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0
                ),
                ),
              onPressed: (){
                Navigator.of(context).pushNamed('/opc1');
                  
                  
              },
            ),
          ],
        ),
      ),
    );
  }
}