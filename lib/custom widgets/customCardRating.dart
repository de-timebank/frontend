import 'package:flutter/material.dart';
import 'package:testfyp/bin/client_user.dart';
import 'package:testfyp/bin/common.dart';
import 'package:testfyp/extension_string.dart';

import '../components/constants.dart';
import '../service pages/serviceDetails.dart';

class CustomCardRating extends StatefulWidget {
  final requestor;
  final value;
  final provider;
  final title; //details
  final rate;

  const CustomCardRating({
    super.key,
    required this.requestor,
    required this.value,
    required this.provider,
    required this.title, //details /
    required this.rate,
  });

  @override
  State<CustomCardRating> createState() => _CustomCardRatingState();
}

// ignore: camel_case_types
class _CustomCardRatingState extends State<CustomCardRating> {
  late dynamic _userRequestor;
  late dynamic _userProvider;
  bool isLoading = false;

  @override
  void initState() {
    isLoading = true;
    getRequestorName();
    // TODO: implement initState

    super.initState();
  }

  getRequestorName() async {
    _userRequestor =
        await ClientUser(Common().channel).getUserById(widget.requestor);

    _userProvider =
        await ClientUser(Common().channel).getUserById(widget.provider);

    setState(() {
      isLoading = false;
    });
  }
  //get function => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      child: isLoading
          ? const Card()
          : Card(
              elevation: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${widget.title.toString().capitalize()}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14)
                              //     Theme.of(context).textTheme.headline1,
                              ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "Requestor: ${_userRequestor.user.name.toString().titleCase()}",
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 219, 216, 233),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Provider\n${_userProvider.user.name.toString().titleCase()}',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 14),
                              ),
                            )),
                      )),
                  Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${widget.value}',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )),
                  // Flexible(
                  //   flex: 1,
                  //   child: IconButton(
                  //       onPressed: (() {}),
                  //       icon: Icon(Icons.favorite_border_outlined)),
                  // )
                ],
              ),
            ),
    );
  }
}
