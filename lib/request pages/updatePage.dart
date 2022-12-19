import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:grpc/grpc.dart';
import 'package:testfyp/bin/client_service_request.dart';
import 'package:testfyp/bin/common.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/custom%20widgets/customHeadline.dart';
import 'package:testfyp/custom%20widgets/heading2.dart';
import 'package:testfyp/custom%20widgets/theme.dart';
import 'package:testfyp/extension_string.dart';

class UpdatePage extends StatefulWidget {
  final String id;
  const UpdatePage({super.key, required this.id});

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  @override
  void initState() {
    // TODO: implement initState
    _elementController.text = listElement[0];
    _categoryController.text = listCategories[0];
  }

  final _elementController = TextEditingController();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _categoryController = TextEditingController();
  final _stateController = TextEditingController();
  final _cityController = TextEditingController();
  final _locationController = TextEditingController();
  final _rateController = TextEditingController();
  final _mediaController = TextEditingController();
  final _dateControllerDisplay = TextEditingController();
  final _dateController = TextEditingController();
  final _timeLimitController = TextEditingController();

  late String countryValue = '';
  late String stateValue = '';
  late String cityValue = '';

  final DateTime _dateTime = DateTime.now();

  List<String> listCategories = <String>[
    'Arts, Crafts & Music',
    'Business Services',
    'Community Activities',
    'Companionship',
    'Education',
    'Help at Home',
    'Recreation',
    'Transportation',
    'Wellness',
  ];

  List<String> listElement = <String>[
    'title',
    'category',
    'description',
    'location',
    'date'
  ];

  updateJob(String body) async {
    try {
      if (body == '') {
        context.showErrorSnackBar(message: 'Update value cant be empty');
        Navigator.of(context).pop();
      }

      await ClientServiceRequest(Common().channel)
          .updateService(widget.id, body);
      context.showSnackBar(message: 'Job Updated');
      Navigator.of(context).pop();
    } on GrpcError catch (e) {
      context.showErrorSnackBar(message: e.toString());
    } catch (e) {
      context.showErrorSnackBar(message: e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Update Job'),
          backgroundColor: themeData1().primaryColor),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Heading2('Pick element to update'),
          Container(
            alignment: Alignment.center,
            //padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                )),
            child: DropdownButton<String>(
              underline: Container(
                height: 0,
              ),
              iconEnabledColor: Theme.of(context).primaryColor,
              value: _elementController.text,
              items: listElement.map<DropdownMenuItem<String>>((e) {
                return DropdownMenuItem<String>(
                    value: e,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        e.toString().capitalize(),
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _elementController.text = value.toString();
                  //print(_genderController.text);
                });
              },
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              if (_elementController.text == listElement[0]) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomHeadline(heading: 'Update Title'),
                    ),
                    TextFormField(
                      controller: _titleController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Title'),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            _titleController.text == '') {
                          return 'Please enter title...';
                        }
                        return null;
                      },
                      // onFieldSubmitted: (value) {
                      //   reqList[0]['Title'] = value;
                      // },
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                        onPressed: (() {
                          updateJob(
                              '{"title": "${_titleController.text.toString()}"}');
                        }),
                        child: Text('Update Title'))
                  ],
                );
              } else if (_elementController.text == listElement[1]) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomHeadline(heading: 'Pick category'),
                      Container(
                        alignment: Alignment.center,
                        //padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            )),
                        child: DropdownButton<String>(
                          underline: Container(
                            height: 0,
                          ),
                          iconEnabledColor: Theme.of(context).primaryColor,
                          value: _categoryController.text,
                          items:
                              listCategories.map<DropdownMenuItem<String>>((e) {
                            return DropdownMenuItem<String>(
                                value: e,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    e,
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ));
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _categoryController.text = value.toString();
                              //print(_genderController.text);
                            });
                          },
                        ),
                      ),
                      ElevatedButton(
                          onPressed: (() {
                            updateJob(
                                '{"category": "${_categoryController.text.toString()}"}');
                          }),
                          child: Text('Update Category'))
                    ],
                  ),
                );
              } else if (_elementController.text == listElement[2]) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomHeadline(heading: 'Update Description'),
                    ),
                    TextFormField(
                      controller: _descriptionController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Description'),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            _descriptionController.text == '') {
                          return 'Please enter title...';
                        }
                        return null;
                      },
                      // onFieldSubmitted: (value) {
                      //   reqList[0]['Title'] = value;
                      // },
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                        onPressed: (() {
                          updateJob(
                              '{"description": "${_descriptionController.text.toString()}"}');
                        }),
                        child: Text('Update Description'))
                  ],
                );
              } else if (_elementController.text == listElement[3]) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 15),
                    TextFormField(
                      controller: _locationController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // helperText:
                          //     'Latitude and longitude of the location will be\nautomatically added',
                          hintText: 'Enter location address'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter location...';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
                    CSCPicker(
                      // showCities: true,

                      defaultCountry: DefaultCountry.Malaysia,
                      disableCountry: true,
                      currentState: stateValue,
                      currentCity: cityValue,
                      layout: Layout.vertical,
                      dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 2,
                          )),
                      cityDropdownLabel: 'Pick a City',
                      stateDropdownLabel: 'Pick a State',

                      // dropdownItemStyle: TextStyle,
                      // stateSearchPlaceholder: ,
                      // dropdownHeadingStyle: ,

                      onCountryChanged: (value) {
                        setState(() {
                          countryValue = value;
                          //_locationController.text = ''
                        });
                      },
                      onStateChanged: (value) {
                        setState(() {
                          stateValue = value.toString();
                          _stateController.text = stateValue;
                        });
                      },
                      onCityChanged: (value) {
                        setState(() {
                          cityValue = value.toString();
                          _cityController.text = cityValue;
                        });
                      },
                    ),
                    ElevatedButton(
                        onPressed: (() {
                          updateJob(
                              '{"location":{"address": "${_locationController.text.toString()}", "city" : "${_cityController.text.toString()}", "state": "${_stateController.text.toString()}"}}');
                        }),
                        child: Text('Update Description'))
                  ],
                );
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          DatePicker.showDateTimePicker(context,
                              theme: DatePickerTheme(
                                  doneStyle: TextStyle(
                                      color: themeData1().primaryColor)),
                              showTitleActions: true,
                              minTime: DateTime(
                                  _dateTime.year,
                                  _dateTime.month,
                                  _dateTime.day,
                                  _dateTime.hour,
                                  _dateTime.minute,
                                  _dateTime.second),
                              maxTime: _dateTime.add(Duration(days: 365)),
                              onChanged: (date) {
                            //print('change $date');
                          }, onConfirm: (date) {
                            _dateController.text = date.toString();
                            print(_dateController.text);
                            _dateControllerDisplay.text =
                                'Date: ${date.day}-${date.month}-${date.year} Time: ${date.hour.toString().padLeft(2, '0')} : ${date.minute.toString().padLeft(2, '0')}';
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.en);
                        },
                        child: Text(
                          'Pick date & time',
                          //style: TextStyle(color: Colors.blue),
                        )),
                    TextFormField(
                      enabled: false,
                      controller: _dateControllerDisplay,
                      decoration: InputDecoration(
                          errorStyle: TextStyle(
                            color: Colors.red, // or any other color
                          ),
                          border: OutlineInputBorder(),
                          hintText: 'Date & Time'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          context.showErrorSnackBar(
                              message: 'Please enter new value');
                        }
                        // else if (newDate!.hour == 0 || newDate!.minute == 0) {
                        //   return 'Pick a time';
                        // }
                        return null;
                      },
                    ),
                    ElevatedButton(
                        onPressed: (() {
                          updateJob(
                              '{"date": "${_dateController.text.toString()}"}');
                        }),
                        child: Text('Update Date & Time'))
                  ],
                );
              }
            },
          ),
        ]),
      ),
    );
  }
}
