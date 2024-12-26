import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Center(
            child: Text('Everything is Widget!', style: TextStyle(color: Colors.white),),
          ),
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
            IconButton(onPressed: () {}, 
            icon: Icon(Icons.logout,
            color: Colors.white,))],
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20)
            ),
            padding: EdgeInsets.all(25),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}