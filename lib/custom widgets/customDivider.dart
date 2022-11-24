import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
        //horizontal line
        color: Theme.of(context).primaryColor,
        height: 30,
        thickness: 2,
        indent: 15,
        endIndent: 15);
  }
}
