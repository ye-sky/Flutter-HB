import 'package:flutter/material.dart';
import 'package:hamid_burger/Components/Burger_tile.dart';
import 'package:hamid_burger/models/Burger_shop.dart';
import 'package:provider/provider.dart';

import '../models/burger.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addItemtoCart(Burger burger) {
    Provider.of<BurgerShop>(context, listen: false).addItemtoCart(burger);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BurgerShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(children: [
            const Text(
              "Daraghae kash ka Burger",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 25,
            ),

            //list of burger to buy
            Expanded(
                child: ListView.builder(
                    itemCount: value.burgerShop.length,
                    itemBuilder: (context, index) {
                      Burger eachBurger = value.burgerShop[index];

                      return BurgerTile(
                        burger: eachBurger,
                        icon: Icon(Icons.add),
                        onPressed: () => addItemtoCart(eachBurger),
                      );
                    }))
          ]),
        ),
      ),
    );
  }
}
