import 'package:flutter/material.dart';
import 'package:hamid_burger/Components/Bottom_nav_bar.dart';
import 'package:hamid_burger/Const.dart';
import 'package:hamid_burger/Pages/stats_page.dart';

import 'Cart_page.dart';
import 'Shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    ShopPage(),
    CartPage(),
    StatsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedindex],
    );
  }
}
