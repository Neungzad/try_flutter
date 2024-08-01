import 'package:flutter/material.dart';
import 'package:try_flutter/pages/home_page.dart';
import 'package:try_flutter/pages/setting_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List _pages = [
    const HomePage(),
    const SettingPage(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My App')),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        onTap: handleOnTap,
      ),
    );
  }

  void handleOnTap(index) {
    // Set State of _currentIndex
    setState(() {
      _currentIndex = index;
    });
  }
}
