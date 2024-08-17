// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:try_flutter/pages/home_page.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('todoBox');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.yellow),
        colorScheme: ColorScheme.fromSeed(
          primary: Colors.yellow,
          seedColor: Colors.yellow,
          brightness: Brightness.light,
        ),
      ),
      home: HomePage(),
    );
  }
}
