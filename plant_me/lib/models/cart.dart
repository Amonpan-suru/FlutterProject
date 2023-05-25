import 'package:flutter/material.dart';
import 'package:plant_me/models/plant.dart';

import 'dart:convert';

class Cart extends ChangeNotifier {
  // list of plant for sale
  List<Plant> plantmeShop = [
    Plant(
      name: 'Ficus Leaf fig',
      price: '1299฿',
      ImagePath: 'assets/img/ficus.png',
    ),
    Plant(
      name: 'Zanzibar Gem',
      price: '899฿',
      ImagePath: 'assets/img/zanzibar.png',
    ),
    Plant(
      name: 'Monstera',
      price: '2999฿',
      ImagePath: 'assets/img/monstera.png',
    ),
    Plant(
      name: 'Calathea',
      price: '899฿',
      ImagePath: 'assets/img/calathea ornata.png',
    ),
    Plant(
      name: 'Areca Palm',
      price: '799฿',
      ImagePath: 'assets/img/areca palm.png',
    ),
    Plant(
      name: 'Oxalis',
      price: '699฿',
      ImagePath: 'assets/img/oxalis.png',
    ),
    Plant(
      name: 'Peperomia',
      price: '1099฿',
      ImagePath: 'assets/img/peperomia.png',
    ),
    Plant(
      name: 'Aloe vera',
      price: '599฿',
      ImagePath: 'assets/img/aloe vera.png',
    ),
    Plant(
      name: 'Anthurium',
      price: '1150฿',
      ImagePath: 'assets/img/anthurium.png',
    ),
    Plant(
        name: 'sansevieria',
        price: '699฿',
        ImagePath: 'assets/img/sansevieria.png')
  ];

  // list of item in user cart
  List<Plant> userCart = [];
  // get list of plant for sale
  List<Plant> getPlantList() {
    return plantmeShop;
  }

  // get cart
  List<Plant> getUserCart() {
    return userCart;
  }
  var allprice =0;
  // add item to cart
  void addItemToCart(Plant plant) {
    userCart.add(plant);
    allprice = 0;
    for (var i = 0; i < userCart.length; i++) {
      var slitprice = userCart[i].price.split("฿");
      // print(slitprice[0]);
      allprice += int.parse(slitprice[0]);
    }
    print("totle :" + allprice.toString());
    notifyListeners();
  }
  
  // remove item from cart
  void removeItemFromCart(Plant plant) {
    userCart.remove(plant);
    allprice = 0;
    for (var i = 0; i < userCart.length; i++) {
      var slitprice = userCart[i].price.split("฿");
      // print(slitprice[0]);
      allprice += int.parse(slitprice[0]);
    }
    print("totle :" + allprice.toString());
    notifyListeners();
  }

  void clearCart(){
    userCart.clear();
    allprice = 0;
  }
  int getTotalPrice(){
    return allprice;
  }
}
