import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('1st Page', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Text('D R A W E R'),
              )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage'); 
                },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/settingspage"); 
                },
            ), 
            ListTile(
              leading: Icon(Icons.person),
              title: Text('P R O F I L E'),
              onTap: () { 
                Navigator.pop(context);
                Navigator.pushNamed(context, "/profilepage"); 
                },
            ),
          ], 
        ),
      ),
    );
  }
}