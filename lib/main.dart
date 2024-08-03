import 'package:flutter/material.dart';
import 'package:leanflutter/theme/gradient_container.dart';

void main(){
 runApp(
  const MaterialApp(
  home: Scaffold(
    body: GradientContainer(
      Color.fromARGB(255, 97, 21, 110),
      Color.fromARGB(255, 160, 57, 179)
      )
  )
  ));
}




