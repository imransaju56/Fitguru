import 'package:flutter/material.dart';
import 'package:flutter_app_fitguru/constant/Sizeconfig.dart';
import 'package:flutter_app_fitguru/constant/color.dart';
import 'package:flutter_app_fitguru/screens/Home/Bottom_navigation/bottom_navigation.dart';
import 'package:flutter_app_fitguru/screens/Home/Nutrients.dart';
import 'package:flutter_app_fitguru/screens/Home/Progressbar.dart';
import 'package:flutter_app_fitguru/screens/Home/add_food_button.dart';
import 'package:flutter_app_fitguru/screens/Home/card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Sizeconfig().init(context);

    return Scaffold(
      bottomNavigationBar: bottom_nav(),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: Sizeconfig.blockSizeVertical * 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38.withOpacity(0.05),
                          blurRadius: 5.0,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Spacer(),
                        Addbutton(),
                        SizedBox(
                          height: 10,
                        ),
                        progressbar(),
                        SizedBox(
                          height: 30,
                        ),
                        Nutrients(),

                        Spacer(),
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),

                  Cards(),

                  SizedBox(height: 10,),

                  Cards(),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
