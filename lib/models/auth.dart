import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:shop/exceptions/auth_exception.dart';

class Auth with ChangeNotifier {
 
  Future<void> signup(String email, String password) async {
      final response = await http.post(
        Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyADIu1q5-02Iqx8kAodKi-_3YORBelJDHs'),
        body: jsonEncode({
          'email': email,
          'password': password,
          'returnSecureToken': true,
        }),
        headers: {
        'content-type': 'application/json'
      }
      );
      
      final body = (jsonDecode(response.body));

      if(body['error'] != null) {
        throw AuthException(body['error']['message']);
      }
      print(body);
  }

  Future<void> login(String email, String password) async {

      final response = await http.post(
        Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyADIu1q5-02Iqx8kAodKi-_3YORBelJDHs'),
        body: jsonEncode({
          'email': email,
          'password': password,
          'returnSecureToken': true,
        }),
        headers: {
        'content-type': 'application/json'
      }
      );
  
       final body = (jsonDecode(response.body));

      if(body['error'] != null) {
        throw AuthException(body['error']['message']);
      } print(body);
  }
    

}