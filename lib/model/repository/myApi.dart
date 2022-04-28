import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Map<String, String> headers = {'content-type': 'application/json'};
  Map<String, dynamic> user = {'userid': '', 'password': ''};
  String url = 'https://fun-student-api.azurewebsites.net/';
  void User(String userid, String password) {
    user['userid'] = userid;
    user['password'] = password;
  }

  Future<dynamic> getTasks() async {
    String body = json.encode(user);
    final response = await http.post(
      Uri.parse(url + 'tasks'),
      headers: headers,
      body: body,
    );
    return json2map(response)['tasks'];
  }

  Future<dynamic> getTimetable() async {
    String body = json.encode(user);
    final response = await http.post(
      Uri.parse(url + 'timetable'),
      headers: headers,
      body: body,
    );
    return json2map(response)['timetable'];
  }

  Future<dynamic> checkLogin() async {
    String body = json.encode(user);
    final response = await http.post(
      Uri.parse(url + 'login'),
      headers: headers,
      body: body,
    );
    final response_map = json2map(response);
    return response_map['status'] == 'success';
  }

  Future<dynamic> getToken() async {
    String body = json.encode(user);
    final response = await http.post(
      Uri.parse(url + 'auth'),
      headers: headers,
      body: body,
    );
    return json2map(response)['token'];
  }

  Map<String, dynamic> json2map(http.Response json) {
    String str = utf8.decode(json.bodyBytes);
    return jsonDecode(str);
  }
}

final funApi = Api();
