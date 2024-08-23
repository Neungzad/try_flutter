import 'package:flutter/material.dart';
import 'package:try_flutter/components/bottom_nav_bar.dart';
import 'package:try_flutter/pages/cart_page.dart';
import 'package:try_flutter/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;

  void navigateBottomNavBar(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomNavBar(index),
      ),
      body: _pages[_pageIndex],
    );
  }
}
