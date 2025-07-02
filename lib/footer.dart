
//c'est un class composant Footer
import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget{
  String libelle;

  FooterButton(this.libelle);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(child: Text(libelle, textAlign: TextAlign.center,));
  }
}

class FooterWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
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
      );
  }

}