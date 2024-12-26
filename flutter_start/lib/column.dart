import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Column', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black,
          leading: Icon(Icons.menu, color: Colors.white),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout, color: Colors.white))],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.yellow,
              ),   
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}