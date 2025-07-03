import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp_twitter/twitter-form.dart' show TwitterFormLogin;
//import 'package:tp/twitter-form.dart' show TwitterFormLogin;

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

//alt + entree "LoginPage" => on a une page preparée
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page de connexion"),),
      body: TwitterFormLogin(),//externalisé
    );
  }
}