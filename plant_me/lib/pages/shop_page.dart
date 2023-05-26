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
  void showDetail(Plant plant){
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: lightergreen,
              contentPadding: EdgeInsets.zero,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Center(
                            child: Image.asset(
                              plant.ImagePath,
                              scale: .9,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:35.0),
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    plant.name,
                                      style: TextStyle(
                                        fontSize: 30,
                                      ),
                                  ),
                                  Text(
                                    plant.price,
                                      style: TextStyle(
                                        fontFamily: 'Sarabun',
                                        fontSize: 20,
                                      ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () => addPlantToCart(plant),
                                    child: Container(
                                    padding: EdgeInsets.all(22),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(70, 60, 51, 1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(35),

                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      weight: 40,
                                      size: 20.0,
                                    )
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(24),
                                bottomLeft: Radius.circular(24),
                            ),
                            color: brown,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                          child: Text(
                            plant.detail,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Sarabun',
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    )
                    
                    
                  ],
                  
                ),
              ),
        ),
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
                fontSize: 35,
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
                    detail: () => showDetail(plant),
                  );
                }),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 65.0, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
