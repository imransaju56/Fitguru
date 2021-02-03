import 'package:flutter/material.dart';
import 'package:flutter_app_fitguru/constant/Sizeconfig.dart';
import 'package:flutter_app_fitguru/constant/color.dart';


class slider_wel extends StatefulWidget {
  @override
  _slider_welState createState() => _slider_welState();
}

class _slider_welState extends State<slider_wel> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(70.0, 70.0, 70.0, 40.0),
          child: Image.asset(
            "assets/images/load.png",
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s',
            style: TextStyle(
              wordSpacing: 0.9,
              color: Colors.black.withOpacity(0.7),
              height: 2,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: Sizeconfig.blockSizeVertical * 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 8,
              width: 8,
              decoration:
                  BoxDecoration(color: cons_color, shape: BoxShape.circle),
            ),
            SizedBox(
              width: Sizeconfig.blockSizeHorizontal * 2,
            ),
            Container(
              height: 12,
              width: 12,
              decoration:
                  BoxDecoration(color: cons_color, shape: BoxShape.circle),
            ),
            SizedBox(
              width: Sizeconfig.blockSizeHorizontal * 2,
            ),
            Container(
              height: 8,
              width: 8,
              decoration:
                  BoxDecoration(color: cons_color, shape: BoxShape.circle),
            ),
          ],
        ),
      ],
    );
  }
}
