import 'package:flutter/material.dart';
import 'package:flutter_app_fitguru/constant/color.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,


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
              Spacer(),


             Image.asset("assets/images/salmon.png",scale: 8.0,),
              SizedBox(width: 10.0,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("You added Costco Salmon on your diet",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.7),
                    ),

                  ),
                  SizedBox(height: 2,),
                  Text("70cal",
                    style: TextStyle(
                      fontSize: 16,
                      color: cons_color,
                    ),

                  ),
                ],
              ),


              Spacer(),


            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
