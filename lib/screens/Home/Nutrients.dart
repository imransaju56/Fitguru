import 'package:flutter/material.dart';

class Nutrients extends StatefulWidget {
  @override
  _NutrientsState createState() => _NutrientsState();
}

class _NutrientsState extends State<Nutrients> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TweenAnimationBuilder(

        tween: Tween(begin: 0.0,end: 1.0),
        duration: Duration(seconds: 3),
        builder: (context,value,child){
          int protein=(value*10).ceil();
          int carbs=(value*50).ceil();
          int fat=(value*30).ceil();
          return Row(
            children: [
              Spacer(flex: 3,),
              Column(
                children: [
                  Text("Protein", style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                  ),),
                  Text("${protein}%",style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                  ),),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text("Carbs",style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                  ),),
                  Text("${carbs}%",style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                  ),),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text("Fat",style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                  ),),
                  Text("${fat}%",style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                  ),),
                ],
              ),
              Spacer(flex: 3,),
            ],
          );


        }
      ),
    );
  }
}
