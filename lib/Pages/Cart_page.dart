import 'package:flutter/material.dart';
import 'package:hamid_burger/Components/Burger_tile.dart';
import 'package:hamid_burger/models/Burger_shop.dart';
import 'package:hamid_burger/models/burger.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void RemoveItemfromCart(Burger burger) {
    Provider.of<BurgerShop>(context, listen: false).RemoveItemfromCart(burger);
  }

  @override
  Widget build(BuildContext context) {
    //DateTime now = DateTime.now();
    // DateTime date = DateTime(now.year, now.month, now.day);
    DateTime now = DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);

    return Consumer<BurgerShop>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(children: [
                const Text(
                  'Your Sales',
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: value.userCart.length,
                      itemBuilder: (context, index) {
                        Burger eachBurger = value.userCart[index];

                        return BurgerTile(
                          burger: eachBurger,
                          onPressed: () => RemoveItemfromCart(eachBurger),
                          icon: Icon(Icons.delete),
                        );
                      }),
                )
              ]),
            )));
  }
}
