import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:testfyp/custom%20widgets/customHeadline.dart';
import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../bin/searchfunction.dart';
import '../components/constants.dart';
import '../custom widgets/customCardServiceRequest.dart';
import '../generated/misc.pb.dart';
import '../request pages/request details/requestDetails.dart';

class AvailableServices extends StatefulWidget {
  AvailableServices({Key? key}) : super(key: key);

  @override
  State<AvailableServices> createState() => _AvailableServicesState();
}

class _AvailableServicesState extends State<AvailableServices> {
  late bool isLoad;
  // late dynamic listRequest;
  late List<dynamic> listFiltered;
  late dynamic _userCurrent;
  late String user;
  late bool _isEmpty;
  late int from;
  late int to;
  late int finalCount;
  late dynamic data;
  // late Filter _filter;
  final _scrollController = ScrollController();
  final _categoryController = TextEditingController();
  List<String> listCategories = <String>[
    'All Categories',
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
  //List<String> _listuserCurrent = [];

  @override
  void initState() {
    // _filter = Filter();

    _isEmpty = true;
    _categoryController.text = listCategories[0];
    _scrollController.addListener(
      () {
        if (_scrollController.position.maxScrollExtent ==
            _scrollController.offset) {
          fetch();
          // from += 5;
          // to += 5;

        }
      },
    );
    getinstance();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  void fetch() async {
    //setState(() {});
    from += 7;
    to += 7;
    print('from ' + from.toString());
    print('to ' + to.toString());
    final data1;
    //print('fetching data...');
    if (_categoryController.text == 'All Categories') {
      data1 = await supabase
          .from('service_requests')
          .select()
          .neq('requestor', user)
          .range(from, to);
    } else {
      data1 = await supabase
          .from('service_requests')
          .select()
          .neq('requestor', user)
          .eq('category', _categoryController.text)
          .range(from, to);
    }

    // final data1 = await supabase
    //     .from('service_requests')
    //     .select()
    //     .neq('requestor', user)
    //     .range(from, to);
    setState(() {
      listFiltered.addAll(data1);
    });

    //print('new added list $listFiltered');
    // print(listFiltered);
    // print(listFiltered.length);
  }

  getRequestorName(requestor) async {
    _userCurrent = await supabase
        .from('profiles')
        .select()
        .eq('user_id', requestor)
        .single() as Map;
    return _userCurrent['name'];
  }

  void getinstance() async {
    setState(() {
      isLoad = true;
      from = 0;
      to = 6;
    });
    listFiltered = [];
    user = supabase.auth.currentUser!.id;

    //_filter..by = 'state'..value = '0';
    // print('from ' + from.toString());
    // print('to ' + to.toString());
    if (_categoryController.text == 'All Categories') {
      listFiltered.addAll(await supabase
          .from('service_requests')
          .select()
          .neq('requestor', user)
          .range(from, to));
      data = await supabase
          .from('service_requests')
          .select()
          .neq('requestor', user);
    } else {
      listFiltered.addAll(await supabase
          .from('service_requests')
          .select()
          .neq('requestor', user)
          .eq('category', _categoryController.text)
          .range(from, to));
      data = await supabase
          .from('service_requests')
          .select()
          .neq('requestor', user)
          .eq('category', _categoryController.text);
    }
    // from += 7;
    // to += 7;
    // listFiltered.addAll(await supabase
    //     .from('service_requests')
    //     .select()
    //     .neq('requestor', user));
    // print(finalCount.count);
    // from += 7;
    // to += 7;

    finalCount = data.length;
    print('the final count is $finalCount');
    // print(data['id']);
    //listFiltered.addAll(data);
    // print(listFiltered);
    // print('length' + listFiltered.length.toString());
    // await ClientServiceRequest(Common().channel)
    //     .getAvailable1('state', '0');
    //await ClientServiceRequest(Common().channel).getResponse('state', '0');
    //print(listRequest);
    // for (var i = 0; i < listRequest.requests.length; i++) {
    //   if (listRequest.requests[i].requestor != user &&
    //       _categoryController.text == 'All Categories') {
    //     listFiltered.add(listRequest.requests[i]);
    //     //print(listFiltered);
    //     //_listuserCurrent.add(listRequest.request[i].requestor)
    //   } else if (listRequest.requests[i].requestor != user &&
    //       listRequest.requests[i].category.contains(_categoryController.text)) {
    //     print(_categoryController.text);
    //     listFiltered.add(listRequest.requests[i]);
    //     //_listuserCurrent.add(listRequest.request[i].requestor)
    //   }
    // }
    //print(listFiltered);
    //print(listRequest);
    setState(() {
      isLoad = false;
      isEmpty();
    });
    //print(listRequest.requests.length);
  }

  bool isEmpty() {
    if (listFiltered.length == 0) {
      _isEmpty = true;
      return _isEmpty;
    } else {
      _isEmpty = false;
      return _isEmpty;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoad
            ? const Center(child: CircularProgressIndicator())
            : _isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomHeadline(heading: 'Filter by: '),
                            Container(
                              alignment: Alignment.center,
                              //margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    width: 2,
                                  )),
                              child: DropdownButton<String>(
                                underline: Container(
                                  height: 0,
                                ),
                                // iconEnabledColor:
                                //     Theme.of(context).secondaryHeaderColor,
                                value: _categoryController.text,
                                items: listCategories
                                    .map<DropdownMenuItem<String>>((e) {
                                  return DropdownMenuItem<String>(
                                      value: e,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          e,
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .secondaryHeaderColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ));
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _categoryController.text = value.toString();
                                    //print(_categoryController.text);
                                    getinstance();
                                    //print(_genderController.text);
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'All available jobs based on category will be listed here...\nSo far there are no available job...',
                        textAlign: TextAlign.center,
                      ),
                      Container(
                          //padding: EdgeInsets.only(top: 5),
                          height: MediaQuery.of(context).size.height / 4.6,
                          width: MediaQuery.of(context).size.width,
                          // decoration: BoxDecoration(
                          //   image: DecorationImage(
                          //       image: AssetImage('asset/available_job.png'),
                          //       fit: BoxFit.fitWidth),
                          // ),
                          margin: EdgeInsets.only(bottom: 0),
                          child: FittedBox(
                            child: Image.asset(
                              'asset/available_job.png',
                              height: MediaQuery.of(context).size.height / 3,
                              // width: double.infinity,
                              // repeat: ImageRepeat.repeatX,
                            ),
                            fit: BoxFit.fitWidth,
                          )),
                    ],
                  )
                : Column(
                    //physics: NeverScrollableScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomHeadline(heading: 'Filter by: '),
                            Container(
                              alignment: Alignment.center,
                              //margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    width: 2,
                                  )),
                              child: DropdownButton<String>(
                                underline: Container(
                                  height: 0,
                                ),
                                iconEnabledColor:
                                    Theme.of(context).secondaryHeaderColor,
                                value: _categoryController.text,
                                items: listCategories
                                    .map<DropdownMenuItem<String>>((e) {
                                  return DropdownMenuItem<String>(
                                      value: e,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          e,
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 245, 167, 44),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ));
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _categoryController.text = value.toString();
                                    //print(_categoryController.text);
                                    getinstance();
                                    //print(_genderController.text);
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 1.5,
                        child: ListView.builder(
                          controller: _scrollController,
                          itemCount: listFiltered.length + 1,
                          itemBuilder: (context, index) {
                            if (index < listFiltered.length) {
                              return InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(
                                          builder: (context) => RequestDetails(
                                                category: listFiltered[index]
                                                    ['category'],
                                                isRequest: false,
                                                user: user,
                                                id: listFiltered[index]['id'],
                                                requestor: listFiltered[index]
                                                    ['requestor'],
                                                provider: listFiltered[index]
                                                    ['provider'],
                                                title: listFiltered[index]
                                                    ['title'],
                                                description: listFiltered[index]
                                                    ['description'],
                                                locationName:
                                                    listFiltered[index]
                                                        ['location']['name'],
                                                latitude: listFiltered[index]
                                                        ['location']
                                                    ['coordinate']['latitude'],
                                                longitude: listFiltered[index]
                                                        ['location']
                                                    ['coordinate']['longitude'],
                                                state: listFiltered[index]
                                                    ['state'],
                                                rate: listFiltered[index]
                                                    ['rate'],
                                                applicants: listFiltered[index]
                                                    ['applicants'],
                                                created: listFiltered[index]
                                                    ['createdAt'],
                                                updated: listFiltered[index]
                                                    ['updatedAt'],
                                                completed: listFiltered[index]
                                                    ['completedAt'],
                                                media: listFiltered[index]
                                                    ['mediaAttachments'],
                                              )))
                                      .then((value) => setState(
                                            () {
                                              //_isEmpty = true;
                                              getinstance();
                                            },
                                          ));
                                },
                                child: CustomCardServiceRequest(
                                  state: listFiltered[index]['state'],
                                  //function: getinstance,
                                  //id: listFiltered[index].id,
                                  requestor: listFiltered[index]['requestor'],
                                  //provider: listFiltered[index].provider,
                                  title: listFiltered[index]['title'],
                                  // description:
                                  //     listFiltered[index].description,
                                  // locationName: listFiltered[index].location.name,
                                  // latitude: listFiltered
                                  //     [index].location.coordinate.latitude,
                                  // longitude: listFiltered
                                  //     [index].location.coordinate.longitude,
                                  // state: listFiltered[index].state,
                                  rate: listFiltered[index]['rate'],
                                  // applicants: listFiltered[index].applicants,
                                  // created: listFiltered[index].createdAt,
                                  // updated: listFiltered[index].updatedAt,
                                  // completed: listFiltered[index].completedAt,
                                  // media: listFiltered[index].mediaAttachments,
                                ),
                              );
                            } else {
                              if (finalCount < 6) {
                                return const Center(
                                    child: Text('No more data...'));
                              }
                              if (finalCount < from) {
                                return const Center(
                                    child: Text('No more data...'));
                              } else {
                                return const Center(
                                    child: CircularProgressIndicator());
                              }
                            }
                          },
                        ),
                      ),
                    ],
                  ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Theme.of(context).secondaryHeaderColor,
          onPressed: () {
            showSearch(
                context: context,
                delegate: CustomSearchDelegate(listFiltered, user));
            //print(listFiltered);
          },
          icon: Icon(Icons.search),
          label: Text('Find Job'),
        ));
  }
}
