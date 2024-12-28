import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CounterPage> {

  int _counter = 0;

  void _increasementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Counter App', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:  Text('You push this button this many times.'),
          ),
          Text(_counter.toString(), style: TextStyle(fontSize: 40),),
          ElevatedButton(onPressed: _increasementCounter,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent
          ),
          child: 
          Text('Increment!', style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}