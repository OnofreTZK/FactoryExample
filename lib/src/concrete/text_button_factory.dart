import 'package:flutter/material.dart';
import 'package:afactory/src/abstract/abstract_button_factory.dart';
import 'package:afactory/src/abstract/abstract_text_button.dart';
import 'package:afactory/src/concrete/text_button.dart';

class TextButtonFactory implements IButtonFactory {
   
  final String label;
  ITextButton button = TextButtonImpl("init");

  TextButtonFactory(this.label){
    button = TextButtonImpl(label);
  }

  @override
  Widget createButton() {
    return button.returnButton();
  }

}
