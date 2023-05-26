import 'package:flutter/material.dart';
import 'package:plant_me/models/plant.dart';

class InfoServer{
  final String username;
  final String email;

  InfoServer({
    required this.username,
    required this.email,
  });
}

class OrderHistory{
  final String orderHistoryText;
  final String ordernumber;
  final String Totalprice;
  final List<Plant> plantlist;

  OrderHistory({
    required this.orderHistoryText,
    required this.ordernumber,
    required this.Totalprice,
    required this.plantlist,
  });
}


// List value
class infoServers extends ChangeNotifier{
  List<InfoServer> userprofile = [
    InfoServer(
      username: 'Pun', 
      email: 'punpun@gmail.com', 
    )
  ];

  List<OrderHistory> orderhiss = [
    OrderHistory(
      orderHistoryText: '[Aloe vera]]', 
      ordernumber: '1',
      Totalprice: '888',
      plantlist: [
        Plant(
          name: 'Ficus Leaf figsss',
          price: '1299฿',
          ImagePath: 'assets/img/ficus.png',
          detail: 'a'
        ),
        Plant(
          name: 'Ficus Leaf figsss',
          price: '1299฿',
          ImagePath: 'assets/img/ficus.png',
          detail: 'a'
        ),
      ],
    ), 
    OrderHistory(
      orderHistoryText: '[Aloe vera],[Monstera]', 
      ordernumber: '2',
      Totalprice: '999',
      plantlist: [
        Plant(
          name: 'Ficus Leaf fig1',
          price: '1299฿',
          ImagePath: 'assets/img/ficus.png',
          detail: 'a'
        ),
        Plant(
          name: 'Ficus Leaf fig2',
          price: '1299฿',
          ImagePath: 'assets/img/ficus.png',
          detail: 'a'
        ),
      ],

    ), 
    OrderHistory(
      orderHistoryText: '[Plantplant],[Monstera]',
      ordernumber: '3',
      Totalprice: '777',
      plantlist: [
        Plant(
          name: 'Ficus Leaf fig3',
          price: '1299฿',
          ImagePath: 'assets/img/ficus.png',
          detail: 'a'
        ),
        Plant(
          name: 'Ficus Leaf fig4',
          price: '1299฿',
          ImagePath: 'assets/img/ficus.png',
          detail: 'a'
        ),
        Plant(
          name: 'Ficus Leaf fig3',
          price: '1299฿',
          ImagePath: 'assets/img/ficus.png',
          detail: 'a'
        ),
        Plant(
          name: 'Ficus Leaf fig4',
          price: '1299฿',
          ImagePath: 'assets/img/ficus.png',
          detail: 'a'
        ),
        Plant(
          name: 'Ficus Leaf fig3',
          price: '1299฿',
          ImagePath: 'assets/img/ficus.png',
          detail: 'a'
        ),
        Plant(
          name: 'Ficus Leaf fig4',
          price: '1299฿',
          ImagePath: 'assets/img/ficus.png',
          detail: 'a'
        ),
        Plant(
          name: 'Ficus Leaf fig3',
          price: '1299฿',
          ImagePath: 'assets/img/ficus.png',
          detail: 'a'
        ),
        Plant(
          name: 'Ficus Leaf fig4',
          price: '1299฿',
          ImagePath: 'assets/img/ficus.png',
          detail: 'a'
        ),
        Plant(
          name: 'Ficus Leaf fig3',
          price: '1299฿',
          ImagePath: 'assets/img/ficus.png',
          detail: 'a'
        ),
        Plant(
          name: 'Ficus Leaf fig4',
          price: '1299฿',
          ImagePath: 'assets/img/ficus.png',
          detail: 'a'
        ),
      ],
    ), 
  ];

//Tranform function

  void getthisUserOrder(){
    //sort user history
  }

//get function

  String getUserName() {
    return userprofile[0].username;
  }
  String getEmail() {
    return userprofile[0].email;
  }
  List<OrderHistory> getorderHistory(){
    return orderhiss;
  }
 
}