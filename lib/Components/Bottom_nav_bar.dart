import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;

  MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabBackgroundColor: Color.fromARGB(159, 202, 205, 207),
        tabBorderRadius: 24,
        //tabActiveBorder: Border.(color: Color.fromARGB(141, 66, 67, 70)),

        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: 'Sold',
          ),
          GButton(
            icon: Icons.stacked_bar_chart_outlined,
            text: 'Stats',
          ),
        ],
      ),
    );
  }
}
