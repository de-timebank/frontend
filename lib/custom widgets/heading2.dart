import 'package:flutter/material.dart';

class Heading2 extends StatelessWidget {
  String heading2;

  Heading2(this.heading2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Text(
        heading2,
        style: TextStyle(
            color: Color.fromARGB(255, 49, 61, 90),
            fontSize: 18,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationThickness: 1.5),
      ),
    );
  }
}
