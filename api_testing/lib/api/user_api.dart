
import 'dart:convert';

import 'package:api_testing/model/user.dart';
import 'package:api_testing/model/user_dob.dart';
import 'package:http/http.dart' as http;
import 'package:api_testing/model/user_name.dart';
 
 class UserApi {
  static Future<List<User>> fetchUsers() async {
      const url = 'https://randomuser.me/api/?results=10';
      final uri = Uri.parse(url);
      final response =  await http.get(uri);
      final body = response.body; 
      final json = jsonDecode(body);
      final results = json['results'] as List<dynamic>;
      final transform = results.map((user) {
        final name = UserName(title: user['name']['title'], first: user['name']['first'], last: user['name']['last']);
        final date = user['dob']['date'];
        final dob = UserDob(dob: DateTime.parse(date  ), age: user['dob']['age']);
          return User(
            gender: user['gender'],
            email: user['email'],
            phone: user['phone'], 
            cell: user['cell'],
            nat: user['nat'],
            name: name,
            dob: dob
          );
        }).toList();
        return transform;
  }
 }