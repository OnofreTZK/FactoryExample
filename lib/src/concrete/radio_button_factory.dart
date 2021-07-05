import 'package:flutter/material.dart';
import 'package:afactory/src/abstract/abstract_button_factory.dart';
import 'package:afactory/src/abstract/abstract_button.dart';
import 'package:afactory/src/concrete/radio_button.dart';

class RadioButtonFactory implements IButtonFactory {
   
    final String label;
    IButton button = RadioButtonImpl("init");

    RadioButtonFactory(this.label){
        button = RadioButtonImpl(label);
    }

    @override
    Widget createButton() {
      return button.returnButton();
    }
}
