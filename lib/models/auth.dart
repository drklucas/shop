import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop/exceptions/auth_exception.dart';

class Auth with ChangeNotifier {
  
  Future<void> _authenticate(String email, String password, String urlFragment) async {
    final url = 'https://identitytoolkit.googleapis.com/v1/accounts:$urlFragment?key=AIzaSyAMQ9amX_JrqFYd0_eSZqh8XR2UT-Tdnp8';
    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
      headers: {
        'content-type': 'application/json'
      }
      );

      final body = jsonDecode(response.body);

      if(body['erro'] != null) {
        throw AuthException(body['error']['message']);
      }

      print(body);
  }

  Future<void> signup(String email, String password) async {
   return _authenticate(email, password, 'sinUp');
  }

  Future<void> login(String email, String password) async {
   return _authenticate(email, password, 'signInWithPassword');
  }

}