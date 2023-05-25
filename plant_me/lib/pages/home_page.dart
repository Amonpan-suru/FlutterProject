import 'package:flutter/material.dart';
import 'package:plant_me/components/bottom_nav_bar.dart';
import 'package:plant_me/pages/cart_page.dart';
import 'package:plant_me/pages/shop_page.dart';

import 'news_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the buttom nav bar
  int _selectedIndex = 0;

  //this method will update our selected Index
  //when the user taps on the buttom bar
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //page to display
  final List<Widget> _page = [
    //news page
    const NewsPage(),
    //shop page
    const ShopPage(),
    //cart page
    const CartPage(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 254, 241, 1),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                 //logo
                DrawerHeader(
                  child: Image.asset(
                    'assets/img/logo.png',
                    color: Colors.white,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),

                //other pages
                const Padding(
                  padding: EdgeInsets.only(left : 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                      ), 
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left : 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(
                        color: Colors.white,
                     ),
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0, bottom:25),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
            )
          ],
        ),      
      ),   
      body: _page[_selectedIndex],
    );
  }
}