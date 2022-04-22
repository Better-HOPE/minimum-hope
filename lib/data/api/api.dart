import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Map<String, String> headers = {'content-type': 'application/json'};
  Map<String, dynamic> user = {'userid': '', 'password': ''};
  String url = 'https://fun-student-api.azurewebsites.net/';
  void User(String userid, String password) {
    this.user['userid'] = userid;
    this.user['password'] = password;
  }

  Future<dynamic> getTasks() async {
    String body = json.encode(user);
    final response = await http.post(
      Uri.parse(url + 'tasks'),
      headers: headers,
      body: body,
    );
    return response.body;
  }

  
}
