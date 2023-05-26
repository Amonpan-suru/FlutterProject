import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/models/cart.dart';
import 'package:plant_me/models/newspaperList.dart';
import 'package:plant_me/models/serveritem.dart';
import 'package:provider/provider.dart';
import 'package:plant_me/screen/openapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Cart>(create: (context)=>Cart()),
        ChangeNotifierProvider<Newspaper>(create: (context)=>Newspaper()),
        ChangeNotifierProvider<infoServers>(create: (context)=>infoServers()),
      ],
      
      builder: (context, child) => MaterialApp(
        title: 'Custom Fonts',
        theme: ThemeData(
          fontFamily: 'BebasNeue',
          primarySwatch: lightyellow,
          textTheme: const TextTheme(
            subtitle1: TextStyle(color: brown), //<-- SEE HERE
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true, //<-- SEE HERE
            fillColor: Colors.white, //<-- SEE HERE
          ),
        ),
        home: const OpenappScreen(),
      ),
    );
  }
}
