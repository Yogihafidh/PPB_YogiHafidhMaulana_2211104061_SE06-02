import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Ini Halaman Beranda')),
    Center(child: Text('Ini Halaman Wisata')),
    Center(child: Text('Ini Halaman Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan BottomNavigationBar'),
          backgroundColor: Colors.orange,
        ),
        body: _pages[_currentIndex], // Display the current page
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex, // Highlight the selected icon
          onTap: (index) {
            setState(() {
              _currentIndex = index; // Update the index and reload the page
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.place),
              label: 'Wisata',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
