import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/models/newspaperList.dart';
import 'package:plant_me/pages/home_page.dart';
import 'package:plant_me/screen/login.dart';
import 'package:provider/provider.dart';

class DetailNewsPage extends StatelessWidget {
  const DetailNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Newspaper>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: lightyellow,
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 24,right: 32,top: 20),
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
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
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