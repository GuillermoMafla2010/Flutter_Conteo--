


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContadorPage extends StatefulWidget{
 
  @override
  createState()=>_ContadorPageState();
}


class _ContadorPageState extends State<ContadorPage>{
  
   final estilos = new TextStyle(fontSize:25);
    int _conteo=0;
  
  @override
  Widget build(BuildContext context) {

   

    
    return Scaffold(
      appBar: AppBar(
        title:Text('StateFull Widget')
      ),

      body: Center(
        
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de tabs', style: estilos),
            Text('$_conteo' , style: estilos,)
          ],) ,
      ),

      floatingActionButton: _crearBotones(),
    );



    
  }

    Widget _crearBotones(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(width: 30),
          FloatingActionButton(
            child:Icon(Icons.exposure_zero),
            onPressed:reseteo 
          ),
          Expanded(child:SizedBox()),

          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: restar
          ),

          SizedBox(width:5.0),


          FloatingActionButton(
            onPressed: agregar,
            child: Icon(Icons.add),
          )


        ],
      );
    }

     void agregar(){
        setState(() {
          _conteo++;
        });
      }


      void reseteo(){
        setState(() {
          _conteo=0;
        });
      }

      void restar(){
        setState(() {
          _conteo--;
        });
      }

}
 

