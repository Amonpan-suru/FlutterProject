import 'package:flutter/material.dart';
import 'package:plant_me/models/serveritem.dart';

class ServerItemClass extends StatelessWidget {
  OrderHistory orderHistory;
  void Function()? historyfunc;
  ServerItemClass({super.key, required this.orderHistory,required this.historyfunc});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: historyfunc,
      child: Container(
        margin: EdgeInsets.only(bottom: 20, left: 50,right: 50),
        padding: EdgeInsets.symmetric(vertical: 19,horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(40),
          image: DecorationImage(
            image: AssetImage('assets/img/ex2.png'),
            fit: BoxFit.fill
          ) 
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[ Text(
            'Order No. ' + orderHistory.ordernumber,
            style: TextStyle(
              fontSize: 20
            ),
          ),
          Text(
            'Total : '+ orderHistory.Totalprice,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Sarabun',
              fontWeight: FontWeight.bold
            ),
          ),
          ]
        ),
    
        // ListTile(
        //   leading: Text(
        //     'Order No. ' + widget.orderHistory.ordernumber,
        //     style: TextStyle(
        //       fontSize: 17
        //     ),
        //   ),
        //   trailing: Text(
        //     'Total : '+ widget.orderHistory.Totalprice,
        //     style: TextStyle(
        //       fontSize: 17
        //     ),
        //   ),
        //   ),
      ),
    );   
    
  }
}