import 'package:flutter/material.dart';
import 'package:flutter_app_fitguru/constant/color.dart';

class progressbar extends StatefulWidget {
  @override
  _progressbarState createState() => _progressbarState();
}

class _progressbarState extends State<progressbar> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: Duration(seconds: 4),
        builder: (context, value, child) {
          int percentage = (value * 779).ceil();
          return Center(
            child: Container(
              height: 300,
              width: 300,
              child: Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (sed) {
                      return SweepGradient(
                        startAngle: 0.0,
                        endAngle: 3.14 * 2,
                        stops: [value, value],
                        center: Alignment.center,
                        colors: [
                          cons_color.withOpacity(0.7),
                          Colors.grey.withAlpha(55)
                        ],
                      ).createShader(sed);
                    },
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: cons_color.withOpacity(0.95),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 285,
                      height: 285,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          Text(
                            "Total",
                            style: TextStyle(
                              color: Colors.black54
                                  .withOpacity(0.45),
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${percentage}cal",
                            style: TextStyle(
                              color: cons_color,
                              fontSize: 40,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "of 1800 cal",
                            style: TextStyle(
                              color: Colors.black54
                                  .withOpacity(0.45),
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

