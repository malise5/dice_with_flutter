import 'package:flutter/material.dart';
import 'package:leanflutter/style_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {

  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [Color.fromARGB(255, 31, 7, 71),
          Color.fromARGB(255, 91, 8, 105)],
          begin: startAlignment,
          end: endAlignment,
        )
      ),
      child: const Center(
        child: StyledText()
        ),
    );
  }
  
}