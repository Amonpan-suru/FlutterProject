import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/models/cart.dart';
import 'package:plant_me/models/plant.dart';
import 'package:plant_me/pages/home_page.dart';
import 'package:plant_me/screen/thankyou.dart';
import 'package:provider/provider.dart';
import 'package:plant_me/models/profile.dart';

import '../components/cart_item.dart';

import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

String _localhost() {
  if (Platform.isAndroid)
    return 'http://10.0.2.2:3000';
  else // for iOS simulator
    return 'http://localhost:3000';
}

var products;
var price;

class CartPage extends StatelessWidget {
  void SaveHistory() async {
    final respone = await http.post(
      Uri.parse(_localhost() + "/SaveHistory"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': Profile.username.toString(),
        'products': products,
        'price': price
      }),
    );
    print(respone.body);
  }

  const CartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            Text(
              'My Cart',
              style: TextStyle(color: brown, fontSize: 35),
            ),

            const SizedBox(
              height: 20,
            ),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  // get individual plant
                  Plant individualPlant = value.getUserCart()[index];

                  //return cart item
                  return CartItem(
                    plant: individualPlant,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                          fontFamily: "BebasNeue", color: brown, fontSize: 20),
                      text: "Total : ",
                      children: [
                    TextSpan(
                      style: TextStyle(
                        color: brown,
                        fontSize: 18,
                      ),
                      text: value.getTotalPrice().toString() + '฿',
                    )
                  ])),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        price = value.getTotalPrice().toString();
                        products = value.getTotalProduct();
                        print(price);
                        print(products);

                        value.clearCart();
                        SaveHistory();
                        // print(Profile.username);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const thankyouScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: brown,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(10)) // Background color
                          ),
                      child: const Text(
                        "PAY ME",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
