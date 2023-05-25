import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/models/newspaper.dart';
import 'package:plant_me/models/newspaperList.dart';
import 'package:provider/provider.dart';

class DetailNewsPage extends StatelessWidget {
  const DetailNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Newspaper>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: lightyellow,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.only(left: 32,right: 32,top: 20),
                  child: Text(
                    value.getCurrentAticle().newstopic,
                    style: TextStyle(
                      color: brown,
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32,right: 32,top: 10,bottom: 10),
                  child: Text(
                      value.getCurrentAticle().author,
                  ),
                ),
                Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.asset(
                        value.getCurrentAticle().imagePath,
                      ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0,right: 0,top: 20),
                  child: Container(
                    padding: EdgeInsets.only(left:35,right: 35,top: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          value.getCurrentAticle().detail,
                          style: TextStyle(
                            color: brown,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 60,)
                      ],
                    ),
                    
                  ),
                )     
              ],
            ),
          ),
        ),
        
      )
    );
  }
}