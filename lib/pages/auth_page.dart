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
                       Colors.cyan.shade800,
                       Colors.blueGrey.shade100
                     ],
                     begin: Alignment.bottomRight,
                     end: Alignment.topLeft,
                   ),
                   ),
               ),
               Container(
                 width: double.infinity,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Container(
                       margin: const EdgeInsets.only(bottom: 8),
                       padding: const EdgeInsets.symmetric(
                         vertical: 10,
                         horizontal: 75,
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(25),
                         color: Colors.grey,
                         boxShadow: const [
                           BoxShadow(
                             blurRadius: 8,
                             color: Colors.black45,
                             offset: Offset(0, 2)
                           )
                         ]
                       ),
                       child: Text(
                         'SHOP',
                         style: TextStyle(
                           fontSize: 45, 
                           fontFamily: 'Anton',
                           color: Theme.of(context).accentTextTheme.headline6?.color,
                         ),
                       ),
                     ),
                     AuthForm(),
                   ],
                 ),
               ),
             ],
           ),
       );
  }
}