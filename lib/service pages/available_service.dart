import 'package:flutter/material.dart';
import 'package:testfyp/custom%20widgets/customHeadline.dart';
import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../bin/searchfunction.dart';
import '../components/constants.dart';
import '../custom widgets/customCardServiceRequest.dart';
import '../generated/misc.pb.dart';
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

  // late Filter _filter;

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
    setState(() {
      isLoad = true;
    });
    listFiltered = [];
    user = supabase.auth.currentUser!.id;

    //_filter..by = 'state'..value = '0';
    listRequest =
        // await ClientServiceRequest(Common().channel)
        //     .getAvailable1('state', '0');
        await ClientServiceRequest(Common().channel).getResponse('state', '0');
    //print(listRequest);
    for (var i = 0; i < listRequest.requests.length; i++) {
      if (listRequest.requests[i].requestor != user &&
          _categoryController.text == 'All Categories') {
        listFiltered.add(listRequest.requests[i]);
        //print(listFiltered);
        //_listuserCurrent.add(listRequest.request[i].requestor)
      } else if (listRequest.requests[i].requestor != user &&
          listRequest.requests[i].category.contains(_categoryController.text)) {
        print(_categoryController.text);
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
                : ListView(
                    //shrinkWrap: true,
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
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                          itemCount: listFiltered.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(
                                        builder: (context) => RequestDetails(
                                              category:
                                                  listFiltered[index].category,
                                              isRequest: false,
                                              user: user,
                                              id: listFiltered[index].id,
                                              requestor:
                                                  listFiltered[index].requestor,
                                              provider:
                                                  listFiltered[index].provider,
                                              title: listFiltered[index].title,
                                              description: listFiltered[index]
                                                  .description,
                                              locationName: listFiltered[index]
                                                  .location
                                                  .name,
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
                                              applicants: listFiltered[index]
                                                  .applicants,
                                              created:
                                                  listFiltered[index].createdAt,
                                              updated:
                                                  listFiltered[index].updatedAt,
                                              completed: listFiltered[index]
                                                  .completedAt,
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
                              child: CustomCardServiceRequest(
                                state: listFiltered[index].state,
                                //function: getinstance,
                                //id: listFiltered[index].id,
                                requestor: listFiltered[index].requestor,
                                //provider: listFiltered[index].provider,
                                title: listFiltered[index].title,
                                // description:
                                //     listFiltered[index].description,
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
