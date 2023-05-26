import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/components/history_item.dart';
import 'package:plant_me/components/item_from_server.dart';
import 'package:plant_me/models/cart.dart';
import 'package:plant_me/models/plant.dart';
import 'package:plant_me/models/serveritem.dart';
import 'package:plant_me/screen/about.dart';
import 'package:provider/provider.dart';

import '../screen/login.dart';
import 'home_page.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  void ClickOrder(OrderHistory orderHistory) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Order No. '+ orderHistory.ordernumber),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
                itemCount: orderHistory.plantlist.length,
                  itemBuilder: (context, index) {
                    // get individual plant
                    Plant individualPlant = orderHistory.plantlist[index];
          
                    //return cart item
                    return HistoryItem(
                      plant: individualPlant,
                    );
                  },
                ),
          ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<infoServers> (
      builder: (context, value, child) => 
      Stack(
        children: <Widget>[
          Image.asset(
            "assets/img/ex1.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
        backgroundColor: const Color.fromRGBO(206, 218, 173, 0.53),
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 24,right: 32,top: 20),
              child: Icon(
                Icons.menu,
                color: lightorange,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Column(
                children: [
                   //logo
                  DrawerHeader(
                    child: Image.asset(
                      'assets/img/logo.png',
                      color: brown,
                    ),
                  ),
            
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(
                      color: green,
                    ),
                  ),
            
                  //other pages
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                    } ,
                    child: const Padding(
                      padding: EdgeInsets.only(left : 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 30,
                        ),
                        title: Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ), 
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const profilePage()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.account_circle,
                          color: Colors.white,
                          size: 30,
                        ),
                        title: Text(
                          'Account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:() => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutScreen())),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.info,
                          color: Colors.white,
                          size: 30,
                        ),
                        title: Text(
                          'About',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 25.0, bottom:25),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
              ),
            )
          ],
        ),      
      ), 
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(206, 218, 173, 0.53),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60) ,bottomRight: Radius.circular(60))
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/img/logo.png',
                    scale: .85,
                  ),
                  const SizedBox(height: 15,),
                  Text(
                    value.getUserName(),
                    style: TextStyle(
                      fontSize: 23
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text(
                    'Email : ' + value.getEmail(),
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                ],
              ),   
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.0,top: 40,bottom: 20),
                  child: Text(
                    'History',
                    style: TextStyle(
                      fontSize: 23
                    ),
                  ),
                ),
                
              ],
            ),
            Expanded(
              child: ListView.builder(
              itemCount: value.getorderHistory().length,
              itemBuilder: (context, index) {
                OrderHistory individualhistory = value.getorderHistory()[index];
                return ServerItemClass(
                orderHistory: individualhistory, historyfunc: () => ClickOrder(individualhistory),
                );
                },
              ),
            ),
            
          ],
        ),
      ),     
      )
    ]),
    );
    
  }
}