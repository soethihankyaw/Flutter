import 'package:api_testing/api/user_api.dart';
import 'package:api_testing/model/user.dart';

import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rest Api Testing"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
        final user = users[index];
        final color = user.gender == 'male' ? Colors.blue : Colors.white;
        return ListTile(
          title: Text(user.fullName),
          subtitle: Text(user.phone),
          tileColor: color,
        );
      })
    );
  }

  Future<void> fetchUsers() async {
  final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}