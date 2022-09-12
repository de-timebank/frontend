import 'package:flutter/material.dart';
import 'package:textfield_tags/textfield_tags.dart';

class RequestForm extends StatefulWidget {
  RequestForm({Key? key}) : super(key: key);

  @override
  State<RequestForm> createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
  late TextfieldTagsController _controller;
  late double _distanceToField;
  final myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var n = 0;
  List reqList = [
    //{'title': '', 'rate': '', 'tag': '', 'location': '', 'description': ''}
    {}
  ];
  //title
  //category
  //rate
  //location
  //description
  void insertData() {}

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _distanceToField = MediaQuery.of(context).size.width;
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    super.dispose();
    _controller.dispose();
    myController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = TextfieldTagsController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text('Request Form'),
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
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Enter Title'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onFieldSubmitted: (value) {
                    reqList[0]['Title'] = value;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextFormField(
                        //controller: myController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Rate'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter rate..';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          value.toString();
                          reqList[0][1] = value;
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('\$ time/hour')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldTags(
                  textfieldTagsController: _controller,
                  //this will show the initial tags https://pub.dev/packages/textfield_tags
                  // initialTags: const [
                  //   'pick',
                  //   'your',
                  //   'favorite',
                  //   'programming',
                  //   'language'
                  // ],
                  textSeparators: const [
                    ' ',
                    ','
                  ], // when user press space, it will enter as a tag
                  letterCase: LetterCase.small,
                  validator: (String tag) {
                    if (tag == 'php') {
                      return 'No, please just no';
                    } else if (_controller.getTags!.contains(tag)) {
                      return 'you already entered that';
                    }
                    return null;
                  },
                  inputfieldBuilder: //build ur own custom  widget
                      (context, tec, fn, error, onChanged, onSubmitted) {
                    return ((context, sc, tags, onTagDelete) {
                      return TextField(
                        controller: tec,
                        focusNode: fn,
                        decoration: InputDecoration(
                          //isDense: true,
                          border: const OutlineInputBorder(
                              // borderSide: BorderSide(
                              //   color: Color.fromARGB(255, 74, 137, 92),
                              //   width: 3.0,
                              // ),
                              ),
                          // focusedBorder: const OutlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Color.fromARGB(255, 74, 137, 92),
                          //     width: 3.0,
                          //   ),
                          // ),
                          helperText: 'Enter Categories...',
                          helperStyle: const TextStyle(
                            color: Color.fromARGB(255, 74, 137, 92),
                          ),
                          hintText: _controller.hasTags ? '' : "Enter tag...",
                          errorText: error,
                          prefixIconConstraints:
                              BoxConstraints(maxWidth: _distanceToField * 0.74),
                          prefixIcon: tags.isNotEmpty
                              ? SingleChildScrollView(
                                  controller: sc,
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                      children: tags.map((String tag) {
                                    return Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                        color: Color.fromARGB(255, 74, 137, 92),
                                      ),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            child: Text(
                                              '#$tag',
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                            onTap: () {
                                              print("$tag selected");
                                            },
                                          ),
                                          const SizedBox(width: 4.0),
                                          InkWell(
                                            child: const Icon(
                                              Icons.cancel,
                                              size: 14.0,
                                              color: Color.fromARGB(
                                                  255, 233, 233, 233),
                                            ),
                                            onTap: () {
                                              onTagDelete(tag);
                                            },
                                          )
                                        ],
                                      ),
                                    );
                                  }).toList()),
                                )
                              : null,
                        ),
                        onChanged: onChanged,
                        onSubmitted: onSubmitted,
                      );
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Location'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Description'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      myController.clear();
                      _controller.clearTags();
                      if (_formKey.currentState!.validate()) {
                        print(reqList[0][1]);
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')));
                      }
                    },
                    child: const Text('Submit')),
                ElevatedButton(
                    onPressed: () {
                      print(reqList[0]['Title']);
                    },
                    child: const Text('Check List'))
              ],
            ),
          ),
        ));
  }
}
