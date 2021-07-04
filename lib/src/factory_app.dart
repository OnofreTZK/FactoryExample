import 'package:flutter/material.dart';
import 'package:afactory/src/button_screen.dart';

class FactoryApp extends StatelessWidget {

  const FactoryApp();

  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      home: ButtonScreen(),      
      debugShowCheckedModeBanner: false,
    );
  }

}
