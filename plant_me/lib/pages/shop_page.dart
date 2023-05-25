import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/models/cart.dart';
import 'package:plant_me/models/plant.dart';
import 'package:provider/provider.dart';

import '../components/plants_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add plant to cart
  void addPlantToCart(Plant plant) {
    Provider.of<Cart>(context, listen: false).addItemToCart(plant);

    // alert user add plant
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              icon: Image.asset("assets/img/success_add.png"),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              backgroundColor: brown,
            )
        // builder: (context) => const AlertDialog(
        //   title: Text('Successfully added!'),
        //   content: Text('Check your cart'),
        // ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Topic
          const Padding(
            padding: EdgeInsets.only(left: 30.0, top: 15),
            child: Text(
              'PLANTME',
              style: TextStyle(
                color: brown,
                fontSize: 40,
              ),
            ),
          ),

          const SizedBox(height: 40),

          //shop list
          Expanded(
            child: ListView.builder(
                itemCount: value.getPlantList().length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  // create plant
                  Plant plant = value.getPlantList()[index];
                  //return the shoe
                  return PlantsTile(
                    plant: plant,
                    onTap: () => addPlantToCart(plant),
                  );
                }),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 45.0, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
