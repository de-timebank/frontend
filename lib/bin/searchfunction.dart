import 'package:flutter/material.dart';

import '../custom widgets/customCardRequest.dart';
import '../request pages/requestDetails.dart';

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
