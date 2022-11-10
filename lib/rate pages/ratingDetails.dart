import 'package:flutter/material.dart';
import 'package:testfyp/bin/client_rating.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/extension_string.dart';
import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../custom widgets/heading2.dart';

class RatingDetails extends StatelessWidget {
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
        child: ListView(
          shrinkWrap: true,
          children: [
            Heading2('Id'),
            Text(id),
            Heading2('Author'),
            Text(author.toString().capitalize()),
            Heading2('Recipient'),
            Text(recipient.toString().capitalize()),
            Heading2('Value'),
            Text(value.toString().titleCase()),
            Heading2('Comment'),
            Text(comment.toString().titleCase()),
            Heading2('Created On'),
            Text(createdAt.toString().capitalize()),
            Heading2('Updated On'),
            Text(updatedAt),
            Heading2('Job Id'),
            Text(requestId),
            SizedBox(
              height: 15,
            ),
            isProvider
                ? TextButton(
                    onPressed: () {
                      //print(id);
                      _deleteRating(id);
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
