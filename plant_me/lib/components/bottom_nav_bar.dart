import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: GNav(
        color: const Color.fromRGBO(172, 194, 112, 0.5),
        activeColor: Colors.white,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor:  const Color.fromRGBO(172, 194, 112, 1),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 28,
        gap: 8,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        onTabChange: (value) => onTabChange!(value) ,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          
          ),

          GButton(
            icon: Icons.shopping_cart,
            text: 'Shop',
          
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
          
          ),

          
        ],
      ),
    );
  }
}