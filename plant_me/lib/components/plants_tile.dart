import 'package:flutter/material.dart';
import 'package:plant_me/models/plant.dart';


class PlantsTile extends StatelessWidget {
  Plant plant;
  void Function()? onTap;
  PlantsTile({super.key, required this.plant, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(206, 218, 173, 1),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        children: [
          //plant pic
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.asset(plant.ImagePath)
                ),
              ],
            ),
          ),
          
          //price/name
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(1, 1),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0,bottom: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              plant.name,
                              style: TextStyle(
                                color: Colors.brown[600],
                                fontSize: 40,
                              ),
                            ),
                            Text(
                              plant.price,
                              style: TextStyle(
                                color: Colors.brown,
                                fontSize: 20,
                              )
                            )
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                  //button to add to cart
                  Align(
                    alignment: AlignmentDirectional(0, 0.05),
                    child: Column( 
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: onTap,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(70, 60, 51, 1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(48),
                                bottomRight: Radius.circular(45),
                                bottomLeft: Radius.circular(48),
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 28.0,
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),      
        ],
      ),
    );
   }
}