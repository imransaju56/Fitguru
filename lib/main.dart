import 'package:flutter/material.dart';
import 'package:flutter_app_fitguru/model/user.dart';
import 'package:flutter_app_fitguru/screens/Home/home.dart';
import 'package:flutter_app_fitguru/screens/Log_in.dart';
import 'package:flutter_app_fitguru/screens/Sign_up.dart';
import 'package:flutter_app_fitguru/screens/loadingpage.dart';
import 'package:flutter_app_fitguru/screens/wrapper.dart';
import 'package:flutter_app_fitguru/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: MyApp(),

  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return StreamProvider<Users>.value(
      value: Authentication_service().user,
      child: MaterialApp(
        home: Wrapper(),
      ),

    );
  }
}
