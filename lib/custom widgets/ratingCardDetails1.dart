import 'package:flutter/material.dart';
import 'package:testfyp/custom%20widgets/theme.dart';

class RatingCardDetails1 extends StatefulWidget {
  final bool isProvider;
  final String userRating;
  // final Icon icon;
  const RatingCardDetails1(
      {super.key, required this.isProvider, required this.userRating});

  @override
  State<RatingCardDetails1> createState() => _RatingCardDetails1State();
}

class _RatingCardDetails1State extends State<RatingCardDetails1> {
  bool isEmpty(stuff) {
    if (stuff.length == 0 || stuff.toString() == '' || stuff == '0') {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        color: widget.isProvider
            ? themeData1().primaryColor
            : themeData1().secondaryHeaderColor,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: widget.isProvider
                          ? Icon(
                              Icons.emoji_people_rounded,
                              color: themeData1().primaryColor,
                            )
                          : Icon(
                              Icons.handshake,
                              color: themeData1().secondaryHeaderColor,
                            )),
                ),
                Text('Provider Rating', style: TextStyle(color: Colors.white)),
              ],
            ),
            isEmpty(widget.userRating)
                ? Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text('No Rating yet',
                        style: TextStyle(color: Colors.white)),
                  )
                : Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(widget.userRating,
                        style: TextStyle(color: Colors.white)),
                  ),
          ],
        ));
  }
}
