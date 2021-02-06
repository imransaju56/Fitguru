import 'package:flutter/material.dart';
import 'package:flutter_app_fitguru/constant/color.dart';
import 'file:///G:/Installedfiles/Androidstudio/flutterprojects/flutter_app_fitguru/lib/foodlist/foodslist.dart';
import 'package:flutter_app_fitguru/screens/profile.dart';


class Addbutton extends StatefulWidget {
  @override
  _AddbuttonState createState() => _AddbuttonState();
}

class _AddbuttonState extends State<Addbutton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Spacer(),
        SizedBox(
          width: size.width * 0.3,
          height: size.height * 0.05,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 30.0,
                ),
              ],
            ),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: Colors.white,
              onPressed: () async {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return foodlist();

                }));

              },
              child: Text(
                'Add Food +',
                style: TextStyle(
                  color: cons_color,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
