import 'package:flutter/material.dart';
import 'burger.dart';

class BurgerShop extends ChangeNotifier {
  final List<Burger> _Shop = [
    Burger(
      name: 'Afghani Burger',
      price: "50",
      imagePath: "lib/images/chips.png",
    ),
    Burger(
      name: 'Burger',
      price: "50",
      imagePath: "lib/images/burger.png",
    ),
    Burger(
      name: 'Kebab',
      price: "50",
      imagePath: "lib/images/kebab.png",
    ),
    Burger(
      name: 'Shawarma',
      price: "50",
      imagePath: "lib/images/shawarma.png",
    )
  ];

  //user Cart
  List<Burger> _userCart = [];

  //get burger list
  // ignore: non_constant_identifier_names
  List<Burger> get burgerShop => _Shop;

  //get user cart
  List<Burger> get userCart => _userCart;

  //add item to cart
  void addItemtoCart(Burger burger) {
    _userCart.add(burger);
    notifyListeners();
  }

  //remove item from cart
  void RemoveItemfromCart(Burger burger) {
    _userCart.remove(burger);
    notifyListeners();
  }
}
