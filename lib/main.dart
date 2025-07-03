import 'package:flutter/material.dart';
//import "package:tp/auth/login-page.dart";
//import 'package:tp/tweet/tweet-page.dart';
import 'package:tp_twitter/tweet/tweet-page.dart';

import 'auth/login-page.dart';

void main() {
  runApp(TPTwitterApp());
}

class TPTwitterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/tweet",
      routes: {
        "/": (context) => LoginPage(),
        "/tweet": (context) => TweetPage()
      }
    );
  }
}
