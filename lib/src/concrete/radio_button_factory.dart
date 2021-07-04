import 'package:flutter/material.dart';
import 'package:afactory/src/abstract/abstract_button_factory.dart';

class RadioButtonFactory implements IButtonFactory {
   
    final String label;

    RadioButtonFactory(this.label);

    @override
    Widget createButton() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [ 
          Radio<String>(
            activeColor: Colors.purple,
            toggleable: true,
            autofocus: false,
            value: "null",
            groupValue: "null",
            onChanged: (value) {
              print("${label} => Radio Button");
            },
          ), // RadioButton
          Text(
            "Radio Button",
            style: TextStyle(
              color: Colors.purple[500],
              fontSize: 16
            ), // TextStyle
          ), // Text
        ], // <Widget>
      ); // Container
    }

}
