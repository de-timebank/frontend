import 'package:flutter/material.dart';
import 'heading2.dart';
import 'customHeadline.dart';

class ServiceDetails extends StatefulWidget {
  ServiceDetails({Key? key}) : super(key: key);

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  final rateServiceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 127, 17, 224),
        title: Text('Service Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Heading2('Title'),
            Text('This is the title'),
            Heading2('Requestor'),
            Text('John Smith'),
            Heading2('Category'),
            Text('Programming, Python, uhh'),
            Heading2('Location'),
            Text('IIUM'),
            Heading2('Description'),
            Text('This is just a test'),
            SizedBox(
              height: 15,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomHeadline('Rate'),
                        CustomHeadline('\$1 time/hour'),
                      ],
                    ),
                    TextFormField(
                      controller: rateServiceController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Enter Title'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      // onFieldSubmitted: (value) {
                      //   reqList[0]['Title'] = value;
                      // },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: (() {
                              //Navigator.pop(context, 'Rate');
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Processing Data')));
                            }),
                            child: Text('Bid')),
                        TextButton(
                            onPressed: (() {
                              Navigator.pop(context, 'Cancel');
                            }),
                            child: Text('Cancel'))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
