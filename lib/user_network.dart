import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:user_list/user_model.dart';

Future<UserModel> fetchUser() async {
  final response = await http.get('http://172.16.0.2/data/users.json');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    return UserModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
