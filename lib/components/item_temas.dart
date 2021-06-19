import 'package:flutter/material.dart';
import 'package:flutter_projecto/temas/Tema.dart';

class Itemtemas extends StatelessWidget{

  Tema tema;
  Itemtemas(this.tema);

  @override
  Widget build(BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(right: 15.0,bottom:0.1,top: 20.70),
    child: Container(
    decoration: _boxDecoration(context),
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0,top: 20.0,left: 70.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          _descripcion(context),
          Row(
            children: <Widget>[
              _imagenReferencia(context),
              
              
            ],
          ),
        
          
        ],
      ),
      ),
  ),
  ); 
  }
  BoxDecoration _boxDecoration(context){
  return BoxDecoration(
    color: Theme.of(context).primaryColor,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.black45,
        offset: Offset(5.0,5.0),
        blurRadius: 15.0

      ),
    ],
  );
}

  Widget _imagenReferencia(context){
  
    return Padding(
        padding: const EdgeInsets.symmetric(),
        
        child: Column(
        
        children:<Widget>[
        Container(
        decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(
          this.tema.informacion.urlimagen,
         width: 180.10,
         
        ),
      ),
       
        
      ),
       MaterialButton(
            
              elevation: 10.0,
              minWidth: 0.0,
              height: 30.20,
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0) ),
              child: Text(
                'Leer Mas',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
                ),
              onPressed: (){
                
                Navigator.of(context).pushNamed(this.tema.informacion.pantalla);
                  
                  
              },
            ),
        ],
        ),
    );
  }

  Widget _descripcion(context){
    
    return Padding(
    padding: const EdgeInsets.only(right: 50.0,left: 1.0),
    child: Column(
      children: <Widget>[
        
        Text(
              this.tema.informacion.nombre,
              style:  Theme.of(context).textTheme.headline4,
            ),
      
        
      ],
    ),
    );
  }
  
}

