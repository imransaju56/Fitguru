import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_fitguru/constant/color.dart';
import 'package:flutter_app_fitguru/screens/welcome_page/layout.dart';

class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {

  @override
  void initState() {
    Timer(Duration(seconds: 3),()=>Navigator.push(context,
        MaterialPageRoute(builder: (context)
        => welcomepage(),
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
