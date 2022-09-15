import 'package:flutter/material.dart';

class CustomHeadline extends StatelessWidget {
  //const CustomHeadline({Key? key}) : super(key: key);
  String heading;
  CustomHeadline(this.heading);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
      child: Text(
        heading,
        //style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
