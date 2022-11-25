import 'package:flutter/material.dart';
import 'package:testfyp/bin/client_rating.dart';
import 'package:testfyp/bin/client_user.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/extension_string.dart';
import '../bin/common.dart';
import '../custom widgets/heading2.dart';

class RatingDetails extends StatefulWidget {
  //final function;
  final bool isProvider;
  final id;
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
    required this.id,
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

  void _deleteRating(String id) async {
    ClientRating(Common().channel).deleteRating(id);

    // setState(() {
    //   getinstance();
    // });
  }

  //final rateServiceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(255, 127, 17, 224),
        title: Text('Rating Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: isLoad
            ? const Center(child: CircularProgressIndicator())
            : ListView(
                shrinkWrap: true,
                children: [
                  Heading2('Id'),
                  Text(widget.id),
                  Heading2('Author'),
                  Text(_userRequestor.user.name.toString().titleCase()),
                  Heading2('Recipient'),
                  Text(_userProvider.user.name.toString().titleCase()),
                  Heading2('Value'),
                  Text(widget.value.toString().titleCase()),
                  Heading2('Comment'),
                  Text(widget.comment.toString().capitalize()),
                  Heading2('Created On'),
                  Text(
                      'Date: ${dateCreatedOn.day}-${dateCreatedOn.month}-${dateCreatedOn.year}\nTime: ${dateCreatedOn.hour}:${dateCreatedOn.minute}'),
                  Heading2('Updated On'),
                  Text(
                      'Date: ${dateUpdatedOn.day}-${dateUpdatedOn.month}-${dateUpdatedOn.year}\nTime: ${dateUpdatedOn.hour}:${dateUpdatedOn.minute}'),
                  Heading2('Job Id'),
                  Text(widget.requestId),
                  SizedBox(
                    height: 15,
                  ),
                  widget.isProvider
                      ? TextButton(
                          onPressed: () {
                            //print(id);
                            _deleteRating(widget.id);
                            context.showSnackBar(message: 'Rate Deleted');
                            Navigator.of(context).pop();
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
