import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop/components/auth_form.dart';
import 'package:shop/components/card_auth_widget.dart';
import 'package:shop/components/slide_fade_transition.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.cyan.shade50, Colors.cyan.shade100],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Container(
            width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardAuthWidget(),
                  AuthForm(),
                ],
              ),
            ),
          //),
        ],
      ),
    );
  }
}

// }

