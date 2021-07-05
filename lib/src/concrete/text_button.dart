import 'package:flutter/material.dart';
import 'package:afactory/src/abstract/abstract_button_factory.dart';
import 'package:afactory/src/abstract/abstract_text_button.dart';

class TextButtonImpl implements ITextButton {
   
  final String label;

  TextButtonImpl(this.label);

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.purple;
    }
    return Colors.purple;
  }


  @override
  Widget returnButton(){
    return TextButton(
      autofocus: false, 
      child: Text(
          "Text Button",
          style: TextStyle(
            color: Colors.white,
          ), // TextStyle
      ), // Text
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(getColor), 
      ), // ButtonStyle
      onPressed: () async {
          print("${label} => Text Button");
      }
    );
  }

}
