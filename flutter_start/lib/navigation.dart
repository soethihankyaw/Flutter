import 'package:flutter/material.dart';
import 'package:flutter_start/pages/navigator/first_page.dart';
import 'package:flutter_start/pages/navigator/secound_page.dart';

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
        '/secondpage': (context) => SecoundPage() 
      },
    );
  }
}