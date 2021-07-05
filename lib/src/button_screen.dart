import 'package:flutter/material.dart';
import 'package:afactory/src/abstract/abstract_button_factory.dart';
import 'package:afactory/src/concrete/radio_button_factory.dart';
import 'package:afactory/src/concrete/text_button_factory.dart';

class ButtonScreen extends StatelessWidget{
  
  final List<IButtonFactory> buttonFactoryList = [
    RadioButtonFactory("Button type"),
    TextButtonFactory("Button type"),
  ];

  ButtonScreen();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text("Abstract Factory Example"),
          centerTitle: true,
      ), //AppBar
      body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.width * 0.01,
              MediaQuery.of(context).size.height * 0.01,
              MediaQuery.of(context).size.width * 0.01,
              MediaQuery.of(context).size.height * 0.01,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                buttonFactoryList[0].createButton(),
                buttonFactoryList[1].createButton(),
              ], // <Widget>
            ), // Column
          ), // Container
      ), // Center
      backgroundColor: Colors.purple[50],
    ); // Scaffold
  }
}
