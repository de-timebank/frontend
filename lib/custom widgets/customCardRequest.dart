import 'package:flutter/material.dart';
import 'package:testfyp/bin/client_user.dart';
import 'package:testfyp/bin/common.dart';
import 'package:testfyp/extension_string.dart';

class CustomCard_ServiceRequest extends StatefulWidget {
  final requestor;
  // final provider;
  final title; //details
  final rate;

  const CustomCard_ServiceRequest({
    super.key,
    required this.requestor,
    required this.title, //details /
    required this.rate,
  });

  @override
  State<CustomCard_ServiceRequest> createState() =>
      _CustomCard_ServiceRequestState();
}

// ignore: camel_case_types
class _CustomCard_ServiceRequestState extends State<CustomCard_ServiceRequest> {
  late dynamic _userCurrent;
  bool isLoading = false;

  @override
  void initState() {
    isLoading = true;
    getRequestorName();
    // TODO: implement initState

    super.initState();
  }

  getRequestorName() async {
    _userCurrent =
        await ClientUser(Common().channel).getUserById(widget.requestor);
    // print('The current user (widget)' + widget.requestor);

    //print('The current user' + _userCurrent.toString());
    //print(_userCurrent.user.name);
    // _userCurrent = await supabase
    //     .from('profiles')
    //     .select()
    //     .eq('user_id', widget.requestor)
    //     .single() as Map;
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
                          Text(widget.title.toString().capitalize(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14)
                              //     Theme.of(context).textTheme.headline1,
                              ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(_userCurrent.user.name.toString().titleCase(),
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 219, 216, 233),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '${widget.rate} \$Time/hour',
                                style: TextStyle(fontSize: 14),
                              ),
                            )),
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
