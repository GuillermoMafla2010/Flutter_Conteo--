import 'package:contador/src/pages/contador_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:Center(
        child: ContadorPage()
        )
    );
  }
  
}