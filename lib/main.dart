// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:try_flutter/pages/first_page.dart';
import 'package:try_flutter/pages/home_page.dart';
import 'package:try_flutter/pages/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/first': (context) => FirstPage(),
        '/home': (context) => HomePage(),
        '/setting': (context) => SettingPage(),
      },
    );
  }
}
