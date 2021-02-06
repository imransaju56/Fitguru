import 'package:flutter/material.dart';
import 'package:flutter_app_fitguru/constant/Sizeconfig.dart';
import 'package:flutter_app_fitguru/constant/color.dart';

class item_button extends StatefulWidget {

  String input_serve;
  num cal,totalcal;
  item_button({this.input_serve,this.cal,this.totalcal});

  @override
  _item_buttonState createState() => _item_buttonState();
}

class _item_buttonState extends State<item_button> {
  @override
  Widget build(BuildContext context) {


    Sizeconfig().init(context);
    return Row(
      children: [
        Container(
          height: Sizeconfig.blockSizeVertical * 3,
          width: Sizeconfig.blockSizeHorizontal * 16,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black38..withOpacity(0.07)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),

          ),
          child: Center(

            child: TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (datacal){

                widget.input_serve=datacal;

              },
              decoration: InputDecoration(
                border: InputBorder.none,

              ),

            ),
          ),
        ),


        SizedBox(width: 5,),

        GestureDetector(
          onTap: (){
            num serve=num.parse(widget.input_serve);

            widget.totalcal=widget.cal*serve;
            print(widget.totalcal);



          },

          child: Container(
            height: Sizeconfig.blockSizeVertical * 3,
            width: Sizeconfig.blockSizeHorizontal * 15,
            decoration: BoxDecoration(
              color: cons_color,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.black38.withOpacity(0.07),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(2.0,0.0,2,0.0),
              child: Center(

                child: Text('Add',style: TextStyle(color: Colors.white),),

                ),
            ),
            ),
        ),

      ],
    );
  }
}
