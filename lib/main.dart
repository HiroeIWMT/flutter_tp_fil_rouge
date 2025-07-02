import 'package:flutter/material.dart';
import 'package:tp/footer.dart';
import 'package:tp/header.dart';
import 'package:tp/twitter-form.dart';
import 'package:tp/twitter-card.dart' show TwitterCard;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("page Twitter"),
      ),
      body: Column(
        children: [
        //headerをちがうファイルに写して、読んでいるだけ,importも忘れずに
          HeaderWidget(),
          //Middele content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TwitterFormLogin(),
                  TwitterCard(),
                ],
              ),
            ),
          ),

          FooterWidget(),
        ],
      )
    );
  }
}
