
import 'package:flutter/material.dart';
import 'package:flutter_app_fitguru/constant/Sizeconfig.dart';
import 'package:flutter_app_fitguru/constant/color.dart';
import 'package:flutter_app_fitguru/screens/welcome_page/components/slider.dart';
import 'package:flutter_app_fitguru/screens/welcome_page/components/welcome_text.dart';


class welcomepage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    Sizeconfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: Sizeconfig.blockSizeVertical*5,
                ),
                welcome_text(),
                slider_wel(),

                SizedBox(
                  height: Sizeconfig.blockSizeVertical*5,
                ),

                SizedBox(
                  width: Sizeconfig.blockSizeHorizontal * 80,
                  height: Sizeconfig.blockSizeVertical * 8,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    color: cons_color,
                    onPressed: () {


                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Sizeconfig.blockSizeVertical * 3,
                ),

                GestureDetector(
                  onTap: (){},
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.black38.withOpacity(0.7),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
