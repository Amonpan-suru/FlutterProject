import 'package:flutter/material.dart';
import 'package:plant_me/models/plant.dart';

class Cart extends ChangeNotifier{
  // list of plant for sale
  List<Plant> plantmeShop = [
    Plant(
      name: 'Aloe vera', 
      price: '112฿', 
      ImagePath: 'assets/img/aloe vera.png',
    ),

    Plant(
      name: 'Anthurium', 
      price: '1150฿', 
      ImagePath: 'assets/img/anthurium.png',
    ),

    Plant(
      name: 'Monstera', 
      price: '1669฿', 
      ImagePath: 'assets/img/monstera.png',
    ),

    Plant(
      name: 'Ficus', 
      price: '1376฿', 
      ImagePath: 'assets/img/ficus.png',
    ),
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
  // add item to cart
  void addItemToCart(Plant plant){
    userCart.add(plant);
    notifyListeners();
  }
  // remove item from cart
  void removeItemFromCart(Plant plant){
    userCart.remove(plant);
    notifyListeners();
  }
}