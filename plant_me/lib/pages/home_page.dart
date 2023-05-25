import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/components/bottom_nav_bar.dart';
import 'package:plant_me/pages/cart_page.dart';
import 'package:plant_me/pages/shop_page.dart';
import 'package:plant_me/screen/login.dart';

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
            
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
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
            
                  const Padding(
                    padding: EdgeInsets.only(left : 25.0),
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
      body: _page[_selectedIndex],
    );
  }
}