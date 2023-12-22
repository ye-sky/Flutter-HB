import 'package:flutter/material.dart';
import 'package:hamid_burger/Pages/home_page.dart';
import 'package:hamid_burger/models/Burger_shop.dart';
import 'package:provider/provider.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(const HamidBurger());
}

class HamidBurger extends StatelessWidget {
  const HamidBurger({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BurgerShop(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
