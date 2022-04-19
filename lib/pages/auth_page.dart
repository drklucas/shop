import 'package:flutter/material.dart';
import 'package:shop/components/auth_form.dart';

class AuthPage extends StatelessWidget {

  const AuthPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: Stack(
             children: [
               Container(
                 decoration: BoxDecoration(
                   gradient: LinearGradient(
                     colors: [
                       Color(0xFF03FFF2),
                       Color(0xFFD1FCE5)
                     ],
                     begin: Alignment.bottomRight,
                     end: Alignment.topLeft
                   ),
                 ),
               ),
               Container(
                 width:double.infinity,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     AuthForm(),
                 ],)
                 
                 ),
             ],
           ),
       );
  }
}