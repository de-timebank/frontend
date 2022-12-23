import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grpc/grpc.dart';
import 'package:testfyp/bin/client_rating.dart';
import 'package:testfyp/bin/client_user.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/custom%20widgets/customHeadline.dart';
import 'package:testfyp/custom%20widgets/theme.dart';
import 'package:testfyp/extension_string.dart';
import '../bin/common.dart';
import '../custom widgets/heading2.dart';

class RatingDetails extends StatefulWidget {
  //final function;
  final bool isProvider;
  final ratingFor;
  final author;
  final recipient;
  final value; //detailsF
  final comment;
  final createdAt; //location
  final updatedAt;
  final requestId;

  RatingDetails({
    //required this.function,
    required this.isProvider,
    required this.ratingFor,
    required this.author,
    required this.recipient,
    required this.value, //details /
    required this.comment,
    required this.createdAt, //location
    required this.updatedAt,
    required this.requestId,
  });

  @override
  State<RatingDetails> createState() => _RatingDetailsState();
}

class _RatingDetailsState extends State<RatingDetails> {
//   AS ENUM (
//   'requestor',
//   'provider'
// );
  late dynamic _userRequestor;
  late dynamic _userProvider;

  late final dateCreatedOn;
  late final dateUpdatedOn;

  bool isLoad = false;

  @override
  void initState() {
    _getInstance();
    super.initState();
  }

  _getInstance() async {
    setState(() {
      isLoad = true;
    });
    _userRequestor =
        await ClientUser(Common().channel).getUserById(widget.author);

    _userProvider =
        await ClientUser(Common().channel).getUserById(widget.recipient);

    dateCreatedOn = DateTime.parse(widget.createdAt);
    dateUpdatedOn = DateTime.parse(widget.updatedAt);

    setState(() {
      isLoad = false;
    });
  }

  isNull(dynamic stuff) {
    if (stuff == '' || stuff.length == 0) {
      return true;
    } else {
      return false;
    }
  }

  void _deleteRating(String id, String ratingFor) async {
    try {
      ClientRating(Common().channel).deleteRating(id, ratingFor);
      context.showSnackBar(message: 'Rate Deleted');
      Navigator.of(context).pop();
    } on GrpcError catch (e) {
      context.showErrorSnackBar(message: e.toString());
    } catch (e) {
      context.showErrorSnackBar(message: e.toString());
    }

    // setState(() {
    //   getinstance();
    // });
  }

  //final rateServiceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).primaryColor,
        title: Text('Rating Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: isLoad
            ? const Center(child: CircularProgressIndicator())
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //shrinkWrap: true,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: themeData2().primaryColor,
                        width: 3,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.comment,
                                      color: themeData2().primaryColor),
                                  SizedBox(width: 5),
                                  Heading2('Comment'),
                                ],
                              ),
                              Text(widget.comment.toString().capitalize()),
                            ],
                          ),
                          Column(
                            children: [
                              Heading2('Rate'),
                              Center(
                                child: RatingBar.builder(
                                  ignoreGestures: true,
                                  itemSize: 20,
                                  initialRating:
                                      double.parse(widget.value.toString()),
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: themeData2().primaryColor,
                                  ),
                                  onRatingUpdate: (value) {
                                    //_value1Controller = value;
                                    //print(_valueController);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: widget.isProvider
                            ? themeData1().secondaryHeaderColor
                            : themeData2().primaryColor,
                        width: 3,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomHeadline(
                                heading: 'Recipient',
                                color: widget.isProvider
                                    ? themeData1().secondaryHeaderColor
                                    : themeData2().primaryColor,
                              ),
                              Text(_userProvider.user.name
                                  .toString()
                                  .titleCase()),
                            ],
                          ),
                          Column(
                            children: [
                              CustomHeadline(
                                heading: 'Author',
                                color: widget.isProvider
                                    ? themeData1().secondaryHeaderColor
                                    : themeData2().primaryColor,
                              ),
                              Text(_userRequestor.user.name
                                  .toString()
                                  .titleCase()),
                            ],
                          ),
                          Column(
                            children: [
                              CustomHeadline(
                                heading: 'Rating As:',
                                color: widget.isProvider
                                    ? themeData1().secondaryHeaderColor
                                    : themeData2().primaryColor,
                              ),
                              Text(widget.ratingFor.toString().capitalize()),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Heading2(' Created On'),
                  Text(
                      ' Date: ${dateCreatedOn.day}-${dateCreatedOn.month}-${dateCreatedOn.year}\n\tTime: ${dateCreatedOn.hour}:${dateCreatedOn.minute}'),
                  SizedBox(height: 15),
                  // Heading2(' Updated On'),
                  // Text(
                  //     ' Date: ${dateUpdatedOn.day}-${dateUpdatedOn.month}-${dateUpdatedOn.year}\n\tTime: ${dateUpdatedOn.hour}:${dateUpdatedOn.minute}'),
                  // SizedBox(height: 15),
                  Heading2(' Job Id'),
                  Text(' ${widget.requestId}'),
                  SizedBox(height: 15),
                  widget.isProvider
                      ? TextButton(
                          onPressed: () {
                            // var ratingFor = '';
                            // if (widget.ratingFor == 'provider') {
                            //   ratingFor = widget.ratingFor;
                            // }
                            //print(id);
                            _deleteRating(widget.requestId, widget.ratingFor);

                            //Navigator.of(context).popUntil((route) => route.i);
                            //Navigator.of(context).pushNamed('/navigation');
                          },
                          child: Text('Delete Rating'))
                      : Text('')
                ],
              ),
      ),
    );
  }
}
