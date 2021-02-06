import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_fitguru/constant/color.dart';
import 'package:flutter_app_fitguru/screens/Home/home.dart';
import 'package:flutter_app_fitguru/screens/welcome_page/layout.dart';

class loadingtwo extends StatefulWidget {
  @override
  _loadingtwoState createState() => _loadingtwoState();
}

class _loadingtwoState extends State<loadingtwo> {

  @override
  void initState() {
    Timer(Duration(seconds: 3),()=>Navigator.push(context,
        MaterialPageRoute(builder: (context)
        => Home(),
        )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: (Container(
        child: Center(
            child: Text(
              'Fitguru',
              style: TextStyle(
                fontSize: 30,
                color: cons_color,
                fontWeight: FontWeight.w600,
              ),
            )),
      )),
    );
  }
}
