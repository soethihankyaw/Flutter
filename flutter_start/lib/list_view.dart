import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<String> names = ['Sam', 'Dean', 'Bobby'];

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),
          title: Text('List View!', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout,color: Colors.white,))],
        ),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) => ListTile(
           title: Text(names[index]),
        )),
      ),
    );
  }
}