import 'package:flutter/material.dart';
import 'package:testfyp/bin/client_user.dart';
import 'package:testfyp/bin/common.dart';
import 'package:testfyp/custom%20widgets/customHeadline.dart';
import 'package:testfyp/extension_string.dart';

class CustomCardServiceRequest extends StatefulWidget {
  final requestor;
  final state;
  // final provider;
  final title; //details
  final rate;
  final date;
  final location;

  const CustomCardServiceRequest({
    super.key,
    required this.requestor,
    required this.title, //details /
    required this.rate,
    required this.state,
    required this.date,
    required this.location,
  });

  @override
  State<CustomCardServiceRequest> createState() =>
      _CustomCardServiceRequestState();
}

// ignore: camel_case_types
class _CustomCardServiceRequestState extends State<CustomCardServiceRequest> {
  late dynamic _userCurrent;
  bool isLoading = false;

  late dynamic dateJob;

  @override
  void initState() {
    isLoading = true;
    getRequestorName();
    // TODO: implement initState
    dateJob = DateTime.parse(widget.date);
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.work_outline_rounded),
                                SizedBox(width: 5),
                                Text(widget.title.toString().capitalize(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)
                                    //     Theme.of(context).textTheme.headline1,
                                    ),
                              ],
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 219, 216, 233),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${widget.state.toString().titleCase()}',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(_userCurrent.user.name.toString().titleCase(),
                            style: TextStyle(fontSize: 12)),
                        SizedBox(height: 10),
                        Text('${widget.location}',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                        SizedBox(height: 6),
                        Text(
                          '${widget.rate} \$Time/hour',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('${dateJob.day}-${dateJob.month}-${dateJob.year}',
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
