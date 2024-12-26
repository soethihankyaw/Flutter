import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void userTapped() {
    print("User is Tapping me!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: userTapped,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple,
              child: Center(child: Text('Tap Me!', style: TextStyle(color: Colors.white, fontSize: 20),)),
            ),
          ),
        ),
      ),
    );
  }
}