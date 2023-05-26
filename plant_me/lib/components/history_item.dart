import 'package:flutter/material.dart';
import 'package:plant_me/models/plant.dart';

class HistoryItem extends StatelessWidget {
  Plant plant;
  HistoryItem({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(206, 218, 173, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: Image.asset(plant.ImagePath),
        title: Text(plant.name),
        subtitle: Text(plant.price),

      ),   
    );
  }
}