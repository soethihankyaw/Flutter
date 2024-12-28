
import 'package:flutter/material.dart';
import 'package:flutter_start/pages/bottom_navigator/home_page.dart';
import 'package:flutter_start/pages/bottom_navigator/setting_page.dart';
import 'package:flutter_start/pages/bottom_navigator/profile_page.dart';

class BasePage extends StatefulWidget {
   const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {

  int _selectedIndex = 1;

  // ignore: unused_field
  final List _pages = [
    SettingPage(),
    HomePage(),
    ProfilePage(),
    
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Base Page', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.settings), 
          label: 'Setting',),
          BottomNavigationBarItem(icon: Icon(Icons.home), 
          label: 'Home'),
           BottomNavigationBarItem(icon: Icon(Icons.person), 
          label: 'Profile')
        ]),
        
    );
  }
}