import 'package:flutter/material.dart';
//import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:testfyp/bin/client_service_request.dart';
import 'package:testfyp/components/constants.dart';
//import 'package:textfield_tags/textfield_tags.dart';

//import 'package:http/http.dart' as http;

import '../bin/common.dart';

//map API
//https://levelup.gitconnected.com/how-to-add-google-maps-in-a-flutter-app-and-get-the-current-location-of-the-user-dynamically-2172f0be53f6

class RequestForm extends StatefulWidget {
  RequestForm({Key? key}) : super(key: key);

  @override
  State<RequestForm> createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
  late Common _common;

  @override
  void initState() {
    // TODO: implement initState
    _common = Common(); //get server
    super.initState();
  }

  //list
  // - title
  // - description
  // - latitude
  // - longitude
  // - locname
  // - rate
  //late TextfieldTagsController _controller;
  //late double _distanceToField;

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  //final _categoryController = TextEditingController();
  final _latitudeController = TextEditingController();
  final _longitudeController = TextEditingController();
  final _locationController = TextEditingController();
  final _rateController = TextEditingController();
  final _mediaController = TextEditingController();
  List<String> media = ['Test media'];
  final _formKey = GlobalKey<FormState>();
  var n = 0;

  //title
  //category
  //rate
  //location
  //description
  void insertData() {}

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   //_distanceToField = MediaQuery.of(context).size.width;
  // }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _latitudeController.dispose();
    _longitudeController.dispose();
    _locationController.dispose();
    _rateController.dispose();
    _mediaController.dispose();

    super.dispose();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   //_controller = TextfieldTagsController();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text('Request Form'),
          // backgroundColor: Color.fromARGB(255, 127, 17, 224),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                // SizedBox(
                //   height: 20,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Title'),
                ),
                TextFormField(
                  controller: _titleController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Enter Title'),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Description'),
                ),
                TextFormField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter description of the job',
                      prefixIcon: Icon(Icons.map)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Location'),
                ),
                TextFormField(
                  controller: _latitudeController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Latitude',
                    //prefixIcon: Icon(Icons.map)
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: _longitudeController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Longitude'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: _locationController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Enter Location'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Attachment'),
                ),
                TextFormField(
                  controller: _mediaController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter attachment'),
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Please enter some text';
                  //   }
                  //   return null;
                  // },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Rate'),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _rateController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Rate',
                            helperText: 'Make sure you have enough \$ to pay'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter rate..';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('\$ time/hour'),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                ElevatedButton(
                    onPressed: () async {
                      // titleController.clear();
                      // rateController.clear();
                      // categoryController.clear();
                      // locationController.clear();
                      // descriptionController.clear();
                      //_controller.clearTags();
                      // _submitJobForm(
                      //     'new title',
                      //     'new  description',
                      //     '123latitude',
                      //     '321longitude',
                      //     'Sabah',
                      //     2,
                      //     media,
                      //     '291b79a7-c67c-4783-b004-239cb334804d');
                      if (_formKey.currentState!.validate()) {
                        var rate = double.parse(
                            _rateController.text); //convert to double
                        media.add(_mediaController.text); //add to array
                        _submitJobForm(
                            _titleController.text,
                            _descriptionController.text,
                            _latitudeController.text,
                            _longitudeController.text,
                            _locationController.text,
                            rate,
                            media,
                            '291b79a7-c67c-4783-b004-239cb334804d');

                        context.showSnackBar(message: 'Job Created');
                        Navigator.of(context).pop();
                      }
                    },
                    child: const Text('Create Request')),
              ],
            ),
          ),
        ));
  }

  Future<void> _submitJobForm(
      String title,
      String description,
      String latitude,
      String longitude,
      String locName,
      double rate,
      List<String> media,
      String requestor) async {
    await ClientServiceRequest(Common().channel).createServiceRequest(title,
        description, latitude, longitude, locName, rate, media, requestor);
  }
}
