import 'package:flutter/material.dart';

class FactoryApp extends StatelessWidget {

  const FactoryApp();

  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.purple,
            title: const Text("Abstract Factory Example"),
            centerTitle: true,
        ), //AppBar
        body: Text("Xubando"),
        backgroundColor: Colors.purple[50],
      ), // Scaffold
      debugShowCheckedModeBanner: false,
    );
  }

}
