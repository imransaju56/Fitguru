import 'package:flutter/material.dart';
import 'package:flutter_app_fitguru/constant/color.dart';
import 'package:flutter_app_fitguru/services/auth.dart';


class Sign_up extends StatefulWidget {
  final Function toggleview;
  Sign_up({this.toggleview});
  @override
  _Sign_upState createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  String Name= '';
  String Email = '';
  String password = '';
  String error = '';
  bool _obscureText = true;

  Authentication_service _authservice = Authentication_service();


  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(50, 50, 50, 50)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (val) =>
                        val.isEmpty ? 'Please Enter Your Name' : null,
                        onChanged: (val) {
                          setState(() {
                            Name=val;
                          });

                        },
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(216, 216, 216, 1),
                            ),
                          ),
                          labelText: 'Name',
                          labelStyle: TextStyle(fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (val) =>
                        val.isEmpty ? 'Enter email address' : null,
                        onChanged: (val){
                          Email=val;
                        },
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(216, 216, 216, 1))),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (val) =>
                        val.length < 6 ? 'Enter password 6+ long' : null,
                        onChanged: (val){
                          setState(() {
                            password=val;
                          });

                        },

                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(216, 216, 216, 1))),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        width: size.width * 0.9,
                        height: size.height * 0.08,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          color: cons_color,
                          onPressed: () async {
                            if (_formkey.currentState.validate()) {
                              dynamic result = await _authservice
                                  .Register_with_email_password(Email, password);
                              if (result == null) {
                                setState(() {
                                  error='Please supply a valid email address';
                                });
                              } else {
                                print('Registration Successful');
                              }
                            }
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      widget.toggleview();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: Color.fromRGBO(163, 163, 163, 1),
                          ),
                        ),
                        Text(
                          ' Log in',
                          style: TextStyle(
                            color: Color.fromRGBO(60, 60, 60, 1),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: size.width * 0.6,
                    height: size.height * 0.07,
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
                          // if (_formkey.currentState.validate()) {
                          //   dynamic result = await _authentication_service
                          //       .SignIn_with_Email_password(
                          //       Email, password);
                          //
                          //   print("login successful");
                          //
                          //   if (result == null) {
                          //     error = 'Please enter a valid email address';
                          //   } else {
                          //     print("Log in Successful");
                          //   }
                          // }
                        },
                        child: Row(
                          children: [
                            Spacer(),
                            Image.asset(
                              "assets/images/google.png",
                              scale: 1.5,
                            ),
                            Spacer(),
                            Text(
                              'Sign Up with Google',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
