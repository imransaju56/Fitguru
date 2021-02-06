import 'package:flutter/material.dart';
import 'package:flutter_app_fitguru/constant/Sizeconfig.dart';
import 'package:flutter_app_fitguru/constant/color.dart';
import 'package:flutter_app_fitguru/services/auth.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    Authentication_service _auth= Authentication_service();


    Sizeconfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: Sizeconfig.blockSizeHorizontal * 40,
          height: Sizeconfig.blockSizeVertical * 6,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: cons_color,
            onPressed: () {
              _auth.Signout();

            },
            child: Text(
              'Sign Out',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),

    );
  }
}


