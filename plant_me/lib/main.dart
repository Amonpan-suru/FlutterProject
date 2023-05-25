import 'package:flutter/material.dart';
import 'package:plant_me/models/cart.dart';
import 'package:provider/provider.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    ChangeNotifierProvider(create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        title: 'Custom Fonts',
        theme: ThemeData(fontFamily: 'BebasNeue'),
        home: IntroPage(),
      ),
    );
  }
}