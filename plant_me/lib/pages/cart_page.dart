import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/models/cart.dart';
import 'package:plant_me/models/plant.dart';
import 'package:plant_me/pages/home_page.dart';
import 'package:plant_me/screen/thankyou.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            Text(
              'My Cart',
              style: TextStyle(color: Colors.brown[900], fontSize: 40),
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
                  text: const TextSpan(
                      style: TextStyle(
                          fontFamily: "BebasNeue", color: brown, fontSize: 20),
                      text: "Total : ",
                      children: [
                    TextSpan(
                      style: TextStyle(
                        color: brown,
                        fontSize: 18,
                      ),
                      text: '0฿ ',
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
