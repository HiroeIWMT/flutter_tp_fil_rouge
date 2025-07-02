import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//c'est un class composant TwitterOptionButton
class TwitterOptionButton extends StatelessWidget{
  String imgPath;

  TwitterOptionButton(this.imgPath);

  @override
  Widget build(BuildContext context) {
    //return Expanded(child: Text(libelle, textAlign: TextAlign.center,));
    return Expanded(child: IconButton(onPressed: (){}, icon: Image.asset(imgPath),));
  }
}

class TwitterCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return
     Column(
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
               TwitterOptionButton("assets/images/reply.png"),
               TwitterOptionButton("assets/images/retweet.png"),
               TwitterOptionButton("assets/images/favorite.png"),
             ],),
         )
       ],
     );
  }

}