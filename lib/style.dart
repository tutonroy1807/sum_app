

import 'package:flutter/material.dart';

InputDecoration AppInputStyle(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    fillColor: Colors.amber,
    filled: true,
    border: OutlineInputBorder(),
    labelText:  label
  );
}

TextStyle HeadTextStyle(){
  return TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold
  );
}

ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(

    padding: EdgeInsets.all(20),
    backgroundColor: Colors.purple,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    )

  );
}