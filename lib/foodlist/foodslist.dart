import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_fitguru/constant/Sizeconfig.dart';
import 'package:flutter_app_fitguru/constant/color.dart';
import 'package:flutter_app_fitguru/foodlist/button.dart';
import 'package:flutter_app_fitguru/screens/Home/Bottom_navigation/bottom_navigation.dart';
import 'package:flutter_app_fitguru/screens/appbar.dart';

class foodlist extends StatefulWidget {
  @override
  _foodlistState createState() => _foodlistState();
}

class _foodlistState extends State<foodlist> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Food List'),
        backgroundColor: cons_color,
      ),
      //bottomNavigationBar:
      //SizedBox(
      //   height: Sizeconfig.blockSizeVertical * 8,
      //   width: Sizeconfig.blockSizeHorizontal * 50,
      //   child: FlatButton(
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(0.0),
      //     ),
      //     color: cons_color,
      //     onPressed: () {},
      //     child: Text(
      //       'Add Foods',
      //       style: TextStyle(
      //         color: Colors.white,
      //         fontSize: 16,
      //       ),
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('foods').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Text("Loading");
            } else {
              return ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot data = snapshot.data.docs[index];
                    return Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: Sizeconfig.blockSizeVertical * 10,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38.withOpacity(0.05),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Image.asset(
                                    "assets/images/salmon.png",
                                    scale: 8.0,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    width: Sizeconfig.blockSizeHorizontal * 60,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${data['foodname']}",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Colors.black.withOpacity(0.7),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          '${data['Nutrients']}',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: cons_color,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Servings:',
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            item_button(
                                              cal: data["cal"],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                ],
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}
