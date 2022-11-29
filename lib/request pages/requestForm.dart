import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:testfyp/bin/client_service_request.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/custom%20widgets/customDivider.dart';
import 'package:testfyp/custom%20widgets/customHeadline.dart';
import 'package:testfyp/extension_string.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../bin/common.dart';

//map API
//https://levelup.gitconnected.com/how-to-add-google-maps-in-a-flutter-app-and-get-the-current-location-of-the-user-dynamically-2172f0be53f6

class RequestForm extends StatefulWidget {
  RequestForm({Key? key}) : super(key: key);

  @override
  State<RequestForm> createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
  //store user input
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _categoryController = TextEditingController();
  final _latitudeController = TextEditingController();
  final _longitudeController = TextEditingController();
  final _locationController = TextEditingController();
  final _rateController = TextEditingController();
  final _mediaController = TextEditingController();

  List<String> mediaList = [];
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

  final _formKey = GlobalKey<FormState>();

  late String address;
  late String location1;

  @override
  void initState() {
    _categoryController.text = listCategories[2];
    // TODO: implement initState
    super.initState();
  }

  //get geo location
  //Flutter method to get current user latitude & longitude location
  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  //Method to get full address from latitude & longitude co-ordinates (lat long to address)
  Future<void> GetAddressFromLatLong(Position position) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark place = placemarks[0];
      address =
          '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';

      setState(() {
        _latitudeController.text = position.latitude.toString();
        _longitudeController.text = position.longitude.toString();
        _locationController.text = address;
      });
      context.showSnackBar(message: 'Location details added!!');
    } catch (e) {
      context.showErrorSnackBar(message: e.toString());
    }

    //print(Address);
  }

  Future<void> GetLatLongfromAddress(String location) async {
    try {
      List<Location> locations = await locationFromAddress(location);
      setState(() {
        _latitudeController.text = locations[0].latitude.toString();
        _longitudeController.text = locations[0].longitude.toString();
        //_locationController.text = Address;
      });
      context.showSnackBar(message: 'Location details added!!');
    } catch (e) {
      context.showErrorSnackBar(message: e.toString());
    }

    //sprint(locations[0].latitude);
    //print(placemarks);
    // Placemark place = locations[0];
    // Address =
    //     '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    //print(Address);
  }

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

  _addmedia(String media) {
    setState(() {
      mediaList.insert(0, media);
    });
  }

  _deleteMedia(String media) {
    setState(() {
      mediaList.removeWhere((element) => element == media);
    });
  }

  _isMediaEmpty(dynamic media) {
    if (media.length == 0) {
      return true;
    } else {
      return false;
    }
  }

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
                  child: CustomHeadline(heading: 'Title'),
                ),
                TextFormField(
                  controller: _titleController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Enter Title'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter title...';
                    }
                    return null;
                  },
                  // onFieldSubmitted: (value) {
                  //   reqList[0]['Title'] = value;
                  // },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomHeadline(heading: 'Description'),
                ),
                TextFormField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter description of the job',
                    //prefixIcon: Icon(Icons.map)
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter description...';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomHeadline(heading: 'Category'),
                ),
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
                    items: listCategories.map<DropdownMenuItem<String>>((e) {
                      return DropdownMenuItem<String>(
                          value: e,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                CustomDivider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomHeadline(heading: 'Location'),
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: _latitudeController,
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Latitude',
                    //prefixIcon: Icon(Icons.map)
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter latitude...';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: _longitudeController,
                  enabled: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Longitude'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter longitude';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: _locationController,
                  enabled: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Address'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter location...';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                    onPressed: () async {
                      Position position = await _getGeoLocationPosition();
                      GetAddressFromLatLong(position);

                      // GetLatLongfromAddress(
                      //     '1600 Amphitheatre Pkwy, , Mountain View, 94043, United States');
                      //1600 Amphitheatre Pkwy, , Mountain View, 94043, United States
                      // location1 =
                      //     'Lat: ${position.latitude} , Long: ${position.longitude}';

                      //print('The location is : ' + location1);
                    },
                    child: Text('Get current location')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Need request somewhere else?.. Enter address below'),
                ),
                TextFormField(
                  controller: _locationController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Enter Location'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter location...';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                    onPressed: () async {
                      GetLatLongfromAddress(_locationController.text);
                    },
                    child: Text('Enter Address')),
                CustomDivider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomHeadline(heading: 'Attachment'),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                          onPressed: () {
                            _addmedia(_mediaController.text);
                            _mediaController.clear();
                          },
                          child: Icon(Icons.add)),
                    )
                  ],
                ),
                _isMediaEmpty(mediaList)
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('You have not entered any attachment'),
                      )
                    : SizedBox(
                        height: 60,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: mediaList.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(mediaList[index]
                                        .toString()
                                        .titleCase()),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          _deleteMedia(
                                              mediaList[index].toString());
                                        },
                                        icon: Icon(
                                          Icons.remove_circle_outline,
                                          color: Colors.red,
                                        ))
                                  ],
                                ),
                              ),
                            );
                          },
                        )),
                CustomDivider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomHeadline(heading: 'Rate'),
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
                      final user = supabase.auth.currentUser!.id;
                      //final _userCurrent = getCurrentUser(user);
                      //print(_userCurrent);
                      if (_formKey.currentState!.validate()) {
                        var rate = double.parse(
                            _rateController.text); //convert to double
                        //media.add(_mediaController.text); //add to array
                        _submitJobForm(
                            _titleController.text,
                            _descriptionController.text,
                            _latitudeController.text,
                            _longitudeController.text,
                            _locationController.text,
                            rate,
                            mediaList,
                            user,
                            _categoryController.text);
                        // _submitJobForm(
                        //     _titleController.text,
                        //     _descriptionController.text,
                        //     _latitudeController.text,
                        //     _longitudeController.text,
                        //     _locationController.text,
                        //     rate,
                        //     media,
                        //     user,
                        //     _categoryController.text);

                        //'291b79a7-c67c-4783-b004-239cb334804d'

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
      String requestor,
      String category) async {
    // final _user = await supabase.auth.currentUser;
    // print(_user!.id);\
    //print(category);
    //print(media);
    try {
      await ClientServiceRequest(Common().channel).createServiceRequest(
          title,
          description,
          latitude,
          longitude,
          locName,
          rate,
          media,
          requestor,
          category);
      //dprint(test.toProto3Json());
      context.showSnackBar(message: 'Job Created');
      Navigator.of(context).pop();
    } on GrpcError catch (e) {
      context.showErrorSnackBar(message: '${e.message}');
    } catch (e) {
      context.showErrorSnackBar(message: e.toString());
    }
  }
}
