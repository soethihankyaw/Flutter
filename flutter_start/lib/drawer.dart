import 'package:flutter/material.dart';
import 'package:flutter_start/pages/drawer/first_page.dart';
import 'package:flutter_start/pages/drawer/home_page.dart';
import 'package:flutter_start/pages/drawer/profile_page.dart';
import 'package:flutter_start/pages/drawer/settings_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/homepage' : (context) => HomePage(),
        '/profilepage': (context) => ProfilePage(),
        '/settingspage': (context) => SettingsPage()
      },
    );
  }
}