import 'package:flutter/material.dart';

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

//c'est un class composant Header
class HeaderButton extends StatelessWidget{
  String libelle;
  TextAlign align;

  HeaderButton(this.libelle, {this.align = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Expanded(child: Text(libelle, textAlign: align, style: TextStyle(color: Colors.white),));
  }
  
}


//c'est un class composant Footer
class FooterButton extends StatelessWidget{
  String libelle;

  FooterButton(this.libelle);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(child: Text(libelle, textAlign: TextAlign.center,));
  }

}

//c'est un class composant TwitterOptionButton
class TwitterOptionButton extends StatelessWidget{
  String libelle;

  TwitterOptionButton(this.libelle);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(child: Text(libelle, textAlign: TextAlign.center,));
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
          //Header
          Container(
            color: Color(0xFF58B0F0),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  HeaderButton("Nouveau", align: TextAlign.left,),
                  HeaderButton("Accuiel"),
                  HeaderButton("Nouveau", align: TextAlign.right,)
                ],
              ),
            ),
          ),
          //Middele content
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    SizedBox(
                        width: 125,
                        child: Image.network("https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png")),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("chien@gmail.com"),
                                  Text("50s"),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Text("Lorem ipsum blabla bla Lorem ipsum blabla bla Lorem ipsum blabla bla"),
                              ),
                            ],),
                          ),
                        )
                  ],),
                 
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                      TwitterOptionButton("Repondre"),
                      TwitterOptionButton("ReTweet"),
                      TwitterOptionButton("Favoris"),
                    ],),
                  )
                ],
              ),
            ),
          ),
          //Footer
          Container(
           // color: Color(0xFF58B0F0),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  FooterButton("Fil"),
                  FooterButton("Notification"),
                  FooterButton("Message"),
                  FooterButton("Moi")
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
