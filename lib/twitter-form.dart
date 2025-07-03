import 'package:flutter/material.dart';

class TwitterFormLogin extends StatefulWidget{
  @override
  State<TwitterFormLogin> createState() => _TwitterFormLoginState();
}

  class _TwitterFormLoginState extends State<TwitterFormLogin>{
  var _formkey = GlobalKey<FormState>();

  void onSubmit(){
    if(_formkey.currentState!.validate()){
      //print("Connexion succes");
      Navigator.pushNamed(context, "/twitter-page");
    }
  }

  String? validateEmail(String? value){
    if(value!.length < 4){
      return "au mois 3caracteres";
    }

    //if(!RegExp(

    return null;
  }

  String? validatePwd(String? value){
    if(value!.length < 4){
      return "au mois 3caracteres";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
  // TODO: implement build
 return Form(
     key: _formkey,
     child:
 Padding(
   padding: const EdgeInsets.all(10),
   child: Column(children: [
     Padding(
       padding: const EdgeInsets.all(20),
       child: Text("Connexion a Twitter"),
     ),
     TextFormField(
       validator: validateEmail,
       decoration: InputDecoration(labelText: "Email", hintText: "Veuillez saisir un email"),),
     TextFormField(
       validator: validatePwd,
       decoration: InputDecoration(labelText: "Mot de passe", hintText: "Veillez saisir votre mot de passe"),obscureText: true,),
     Padding(
       padding: const EdgeInsets.symmetric(vertical: 10),
       child: Row(children: [Checkbox(value: false, onChanged: (value){}),
        Text("Memorise mes infos")
       ],
       ),
     ),
     SizedBox(width: double.infinity,
     child: ElevatedButton(onPressed: onSubmit, child: Padding(
       padding: const EdgeInsets.all(10),
       child: Text("connexion"),
     ),),
     )
   ],),
 ));
  }
}
