import 'package:flutter/material.dart';
import 'package:afactory/src/abstract/abstract_button.dart';

class RadioButtonImpl implements IButton {
   
    final String label;

    RadioButtonImpl(this.label);

    @override
    Widget returnButton() {
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
