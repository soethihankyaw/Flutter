import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1st Page', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ///push with Navigator.push
            // Navigator.push(context,
            //  MaterialPageRoute(builder: (context) => SecoundPage()));
            ///push with Navigator.pushNamed
            Navigator.pushNamed(context, '/secondpage');
          },
          child: Text('Go to second Page'))),
    );
  }
}