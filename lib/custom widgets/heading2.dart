import 'package:flutter/material.dart';
import 'package:testfyp/custom%20widgets/theme.dart';

class Heading2 extends StatelessWidget {
  String heading2;

  Heading2(this.heading2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Text(
        heading2,
        style: TextStyle(
          color: themeData2().primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          // decoration: TextDecoration.underline,
          //decorationThickness: 1.5
        ),
      ),
    );
  }
}
