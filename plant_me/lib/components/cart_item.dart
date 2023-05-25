import 'package:flutter/material.dart';
import 'package:plant_me/models/cart.dart';
import 'package:plant_me/models/plant.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Plant plant;
  CartItem({
    super.key,
    required this.plant  
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  //remove item from cart
  void removeItemFromCart(){
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.plant);
  }
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
        leading: Image.asset(widget.plant.ImagePath),
        title: Text(widget.plant.name),
        subtitle: Text(widget.plant.price),
        trailing: IconButton(
          icon: Icon(Icons.delete,),
          onPressed: removeItemFromCart,
        )
      ),   
    );
    
  }
}