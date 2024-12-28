import 'package:flutter/material.dart';
import 'package:flutter_start/pages/counter/counter_page.dart';

void main(List<String> args) {
  runApp(Counter());
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}