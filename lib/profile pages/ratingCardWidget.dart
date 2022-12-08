import 'package:flutter/material.dart';

import '../custom widgets/theme.dart';

class RatingCardWidget extends StatefulWidget {
  final dynamic userRating;
  final String title;
  final IconData iconRating;
  final bool isProvider;
  const RatingCardWidget({
    super.key,
    this.userRating,
    required this.title,
    required this.iconRating,
    required this.isProvider,
  });

  @override
  State<RatingCardWidget> createState() => _RatingCardWidgetState();
}

class _RatingCardWidgetState extends State<RatingCardWidget> {
  bool isEmpty(stuff) {
    if (stuff.length == 0 || stuff.toString() == '') {
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    print('the user rating is: ' + widget.userRating);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          //elevation: 5,
          color: widget.isProvider
              ? themeData1().secondaryHeaderColor
              : themeData1().primaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: Icon(
                        widget.iconRating,
                        color: widget.isProvider
                            ? themeData1().secondaryHeaderColor
                            : themeData1().primaryColor,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 25, 0),
                  child: isEmpty(widget.userRating)
                      ? Text('No Rating',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white))
                      : Text('${widget.userRating}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)))
            ],
          )),
    );
  }
}
