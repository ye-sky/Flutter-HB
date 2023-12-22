import 'package:flutter/material.dart';

import '../models/burger.dart';

class BurgerTile extends StatelessWidget {
  final Burger burger;
  void Function()? onPressed;
  final Widget icon;

  BurgerTile({
    super.key,
    required this.burger,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(burger.name),
        subtitle: Text(burger.price),
        leading: Image.asset(burger.imagePath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
