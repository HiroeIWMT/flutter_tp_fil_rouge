//c'est un class composant Header
import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget{
  String? libelle;
  TextAlign? align;
  String? imgPath; //il est nullable

  HeaderButton({this.libelle, this.align = TextAlign.center, this.imgPath});

  //Quel Widget affichezr selon les attributes du "Button"
  Widget selectButtonWidget(){
    if(imgPath != null){
      return IconButton(onPressed: (){}, icon: Image.asset(this.imgPath!));
    }
    return Text(libelle!, textAlign: align, style: TextStyle(color: Colors.white));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return selectButtonWidget();
  }

}
/*
class HeaderWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      //Header
      Container(
        color: Color(0xFF58B0F0),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeaderButton(align: TextAlign.left, imgPath: "assets/pencil.png",),
              HeaderButton(libelle: "Accuiel"),
              HeaderButton(align: TextAlign.right, imgPath: "assets/search.png",)
            ],
          ),
        ),
      );
  }

}

 */
class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // 親幅に合わせる
      color: const Color(0xFF58B0F0),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: HeaderButton(
                align: TextAlign.left,
                imgPath: "assets/pencil.png",
              ),
            ),
            Flexible(
              child: HeaderButton(libelle: "Accuiel"),
            ),
            Flexible(
              child: HeaderButton(
                align: TextAlign.right,
                imgPath: "assets/search.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
