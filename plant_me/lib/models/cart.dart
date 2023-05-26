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
      detail: 'Introducing the Ficus Leaf Fig, a stunning indoor plant with large, glossy, violin-shaped leaves. Its deep green foliage adds elegance to any space, making it a perfect statement piece for homes or offices. This easy-to-care-for plant thrives in bright, indirect light and prefers moderately moist soil. With its air-purifying qualities, the Ficus Leaf Fig brings beauty and improved indoor air quality to your surroundings. Elevate your decor with the captivating Ficus Leaf Fig and enjoy its striking presence.'
    ),
    Plant(
      name: 'Zanzibar Gem',
      price: '899฿',
      ImagePath: 'assets/img/zanzibar.png',
      detail: "Introducing the Zanzibar Gem (Zamioculcas zamiifolia) - a must-have addition to any plant lover's collection. This striking indoor plant features glossy, dark green leaves that add a touch of elegance to any space. What sets the Zanzibar Gem apart is its ability to thrive in low light conditions, making it perfect for those with less sunny windows. With its drought-tolerant nature, this plant requires minimal watering and is incredibly low maintenance. Bring home the beauty and hardiness of the Zanzibar Gem and enjoy its resilient charm."
    ),
    Plant(
      name: 'Monstera',
      price: '2999฿',
      ImagePath: 'assets/img/monstera.png',
      detail: "Introducing the Monstera, a favorite among plant enthusiasts. With its iconic tropical leaves, this plant adds a distinct and exotic touch to any space. Thriving in various light conditions, it's easy to care for and requires moderate watering. Bring the jungle vibes home with the Monstera and enjoy its stunning foliage year-round."
    ),
    Plant(
      name: 'Calathea',
      price: '899฿',
      ImagePath: 'assets/img/calathea ornata.png',
      detail: "Introducing the Calathea Ornata, a showstopper in any plant collection. With its stunning dark green leaves and pink pinstripes, this tropical beauty adds vibrancy to your space. Thriving in moderate to bright indirect light, it prefers consistently moist soil. Elevate your decor with the captivating Calathea Ornata and enjoy its natural charm."
    ),
    Plant(
      name: 'Areca Palm',
      price: '799฿',
      ImagePath: 'assets/img/areca palm.png',
      detail: "Introducing the Areca Palm, a tropical beauty that thrives in bright, indirect light. With its lush green foliage and air-purifying qualities, it brings a refreshing touch to any space. Create a serene atmosphere with the Areca Palm's graceful fronds and vibrant presence."
    ),
    Plant(
      name: 'Oxalis',
      price: '699฿',
      ImagePath: 'assets/img/oxalis.png',
      detail: "Introducing the Oxalis, a charming and colorful plant with clover-like leaves. Its vibrant foliage and delicate flowers add beauty to any space. Easy to care for, the Oxalis thrives in well-draining soil and moderate light. Enjoy the dynamic nature of its responsive leaves and the touch of whimsy it brings to your decor. Elevate your space with the captivating Oxalis."
    ),
    Plant(
      name: 'Peperomia',
      price: '1099฿',
      ImagePath: 'assets/img/peperomia.png',
      detail: "Introducing the Peperomia, a versatile and low-maintenance plant that adds a touch of greenery to any space. With its unique leaf shapes and colors, the Peperomia thrives in low to moderate light environments. Its compact size makes it perfect for small spaces. Elevate your decor with the charming Peperomia and enjoy its easy-care nature."
    ),
    Plant(
      name: 'Aloe vera',
      price: '599฿',
      ImagePath: 'assets/img/aloe vera.png',
      detail: "Introducing Aloe Vera, a versatile succulent known for its soothing gel. With its fleshy leaves and low-maintenance care, Aloe Vera is a popular choice for both beauty and practical use. Enjoy the benefits of Aloe Vera's gel, which can be used for skincare, while adding a touch of green to your space."
    ),
    Plant(
      name: 'Anthurium',
      price: '1150฿',
      ImagePath: 'assets/img/anthurium.png',
      detail: "Introducing Anthurium, an exotic plant with glossy leaves and vibrant flowers. Thriving in bright, indirect light, Anthuriums add tropical elegance to any space. Enjoy their captivating beauty and air-purifying qualities."
    ),
    Plant(
      name: 'sansevieria',
      price: '699฿',
      ImagePath: 'assets/img/sansevieria.png',
      detail: "Introducing Sansevieria, a versatile and low-maintenance plant with striking sword-shaped leaves. It thrives in various light conditions and purifies the air. Elevate your space with the modern elegance of Sansevieria."
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

  var allprice = 0;
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

  void clearCart() {
    userCart.clear();
    allprice = 0;
  }

  int getTotalPrice() {
    return allprice;
  }

  var product;
  String getTotalProduct() {
    product = "";

    for (var i = 0; i < userCart.length; i++) {
      product += "[" + userCart[i].name + "]";
    }

    return product;
  }
}
