import 'package:flutter/material.dart';

import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../components/constants.dart';
import '../custom widgets/customCardRequest.dart';
import '../request pages/requestDetails.dart';

class AvailableServices extends StatefulWidget {
  AvailableServices({Key? key}) : super(key: key);

  @override
  State<AvailableServices> createState() => _AvailableServicesState();
}

class _AvailableServicesState extends State<AvailableServices> {
  late bool isLoad;
  late dynamic listRequest;
  late dynamic listFiltered;
  late dynamic _userCurrent;
  late String user;
  late bool _isEmpty;

  //List<String> _listuserCurrent = [];

  @override
  void initState() {
    isLoad = true;
    _isEmpty = true;
    getinstance();
    super.initState();
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
    listFiltered = [];
    user = supabase.auth.currentUser!.id;

    // _userCurrent = await supabase
    //     .from('profiles')
    //     .select()
    //     .eq('user_id', user)
    //     .single() as Map;

    listRequest =
        await ClientServiceRequest(Common().channel).getResponse('state', '0');

    for (var i = 0; i < listRequest.requests.length; i++) {
      if (listRequest.requests[i].requestor != user) {
        listFiltered.add(listRequest.requests[i]);
        //_listuserCurrent.add(listRequest.request[i].requestor)
      }
    }
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
                ? const Center(child: Text('No avaible services...'))
                : ListView.builder(
                    itemCount: listFiltered.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(
                                  builder: (context) => RequestDetails(
                                        category: listFiltered[index].category,
                                        isRequest: false,
                                        user: user,
                                        id: listFiltered[index].id,
                                        requestor:
                                            listFiltered[index].requestor,
                                        provider: listFiltered[index].provider,
                                        title:
                                            listFiltered[index].details.title,
                                        description: listFiltered[index]
                                            .details
                                            .description,
                                        locationName:
                                            listFiltered[index].location.name,
                                        latitude: listFiltered[index]
                                            .location
                                            .coordinate
                                            .latitude,
                                        longitude: listFiltered[index]
                                            .location
                                            .coordinate
                                            .longitude,
                                        state: listFiltered[index].state,
                                        rate: listFiltered[index].rate,
                                        applicants:
                                            listFiltered[index].applicants,
                                        created: listFiltered[index].createdAt,
                                        updated: listFiltered[index].updatedAt,
                                        completed:
                                            listFiltered[index].completedAt,
                                        media: listFiltered[index]
                                            .mediaAttachments,
                                      )))
                              .then((value) => setState(
                                    () {
                                      //_isEmpty = true;
                                      getinstance();
                                    },
                                  ));
                        },
                        child: CustomCard_ServiceRequest(
                          //function: getinstance,
                          //id: listFiltered[index].id,
                          requestor: listFiltered[index].requestor,
                          //provider: listFiltered[index].provider,
                          title: listFiltered[index].details.title,
                          // description:
                          //     listFiltered[index].details.description,
                          // locationName: listFiltered[index].location.name,
                          // latitude: listFiltered
                          //     [index].location.coordinate.latitude,
                          // longitude: listFiltered
                          //     [index].location.coordinate.longitude,
                          // state: listFiltered[index].state,
                          rate: listFiltered[index].rate,
                          // applicants: listFiltered[index].applicants,
                          // created: listFiltered[index].createdAt,
                          // updated: listFiltered[index].updatedAt,
                          // completed: listFiltered[index].completedAt,
                          // media: listFiltered[index].mediaAttachments,
                        ),
                      );
                    },
                  ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 127, 17, 224),
          onPressed: () {
            showSearch(
                context: context,
                delegate: CustomSearchDelegate(listFiltered, user));
            //print(listFiltered);
          },
          icon: Icon(Icons.search),
          label: Text('Find Service'),
        ));
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<dynamic> listRequest;
  String user;
  CustomSearchDelegate(this.listRequest, this.user);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<dynamic> matchQuery = [];
    for (int i = 0; i < listRequest.length; i++) {
      if (listRequest[i].details.title.contains(query.toLowerCase())) {
        matchQuery.add(listRequest[i]);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => RequestDetails(
                      category: matchQuery[index].category,
                      isRequest: false,
                      user: user,
                      id: matchQuery[index].id,
                      requestor: matchQuery[index].requestor,
                      provider: matchQuery[index].provider,
                      title: matchQuery[index].details.title,
                      description: matchQuery[index].details.description,
                      locationName: matchQuery[index].location.name,
                      latitude: matchQuery[index].location.coordinate.latitude,
                      longitude:
                          matchQuery[index].location.coordinate.longitude,
                      state: matchQuery[index].state,
                      rate: matchQuery[index].rate,
                      applicants: matchQuery[index].applicants,
                      created: matchQuery[index].createdAt,
                      updated: matchQuery[index].updatedAt,
                      completed: matchQuery[index].completedAt,
                      media: matchQuery[index].mediaAttachments,
                    )));
          },
          child: CustomCard_ServiceRequest(
            //function: getinstance,
            //id: matchQuery[index].id,
            requestor: matchQuery[index].requestor,
            //provider: matchQuery[index].provider,
            title: matchQuery[index].details.title,
            // description:
            //     matchQuery[index].details.description,
            // locationName: matchQuery[index].location.name,
            // latitude: matchQuery
            //     [index].location.coordinate.latitude,
            // longitude: matchQuery
            //     [index].location.coordinate.longitude,
            // state: matchQuery[index].state,
            rate: matchQuery[index].rate,
            // applicants: matchQuery[index].applicants,
            // created: matchQuery[index].createdAt,
            // updated: matchQuery[index].updatedAt,
            // completed: matchQuery[index].completedAt,
            // media: matchQuery[index].mediaAttachments,
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<dynamic> matchQuery = [];
    for (int i = 0; i < listRequest.length; i++) {
      if (listRequest[i].details.title.contains(query.toLowerCase())) {
        matchQuery.add(listRequest[i]);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => RequestDetails(
                      category: matchQuery[index].category,
                      isRequest: false,
                      user: user,
                      id: matchQuery[index].id,
                      requestor: matchQuery[index].requestor,
                      provider: matchQuery[index].provider,
                      title: matchQuery[index].details.title,
                      description: matchQuery[index].details.description,
                      locationName: matchQuery[index].location.name,
                      latitude: matchQuery[index].location.coordinate.latitude,
                      longitude:
                          matchQuery[index].location.coordinate.longitude,
                      state: matchQuery[index].state,
                      rate: matchQuery[index].rate,
                      applicants: matchQuery[index].applicants,
                      created: matchQuery[index].createdAt,
                      updated: matchQuery[index].updatedAt,
                      completed: matchQuery[index].completedAt,
                      media: matchQuery[index].mediaAttachments,
                    )));
          },
          child: CustomCard_ServiceRequest(
            //function: getinstance,
            //id: matchQuery[index].id,
            requestor: matchQuery[index].requestor,
            //provider: matchQuery[index].provider,
            title: matchQuery[index].details.title,
            // description:
            //     matchQuery[index].details.description,
            // locationName: matchQuery[index].location.name,
            // latitude: matchQuery
            //     [index].location.coordinate.latitude,
            // longitude: matchQuery
            //     [index].location.coordinate.longitude,
            // state: matchQuery[index].state,
            rate: matchQuery[index].rate,
            // applicants: matchQuery[index].applicants,
            // created: matchQuery[index].createdAt,
            // updated: matchQuery[index].updatedAt,
            // completed: matchQuery[index].completedAt,
            // media: matchQuery[index].mediaAttachments,
          ),
        );
      },
    );
  }
}

// Class CustomSearchDelegate extends SearchDelegate{

// }
