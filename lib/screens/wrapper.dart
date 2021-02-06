import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_fitguru/model/user.dart';
import 'package:flutter_app_fitguru/screens/Authenticate.dart';
import 'package:flutter_app_fitguru/screens/Home/home.dart';
import 'package:flutter_app_fitguru/screens/Log_in.dart';
import 'package:flutter_app_fitguru/screens/loadingpage.dart';
import 'package:flutter_app_fitguru/screens/loadingpage2.dart';

import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users>(context);
    print(user);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
