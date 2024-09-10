import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int) onTabChange;
  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        tabActiveBorder: Border.all(
          color: Colors.white,
        ),
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
            gap: 4, // Add margin between icon and text
            margin: EdgeInsets.only(right: 8),
          ),
          GButton(
            icon: Icons.shop,
            text: 'Cart',
            gap: 4, // Add margin between icon and text
            margin: EdgeInsets.only(left: 8),
          ),
        ],
        onTabChange: (index) => onTabChange(index),
      ),
    );
  }
}
