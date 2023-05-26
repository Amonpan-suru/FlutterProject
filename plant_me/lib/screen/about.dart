import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/pages/home_page.dart';
import 'package:plant_me/pages/profile_page.dart';
import 'package:plant_me/screen/login.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightyellow,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Padding(
                padding: EdgeInsets.fromLTRB(18, 20, 12, 0),
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

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Divider(
                        color: green,
                      ),
                    ),

                    //other pages
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 25.0),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 25.0, bottom: 25),
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
        body: Form(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: SizedBox(
              child: Center(
                child: Image.asset("assets/img/logo.png"),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            child: Center(
              child: Text("TEAM",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(8, 20, 8, 8),
            child: Text(
              "Thichakorn Viriyacharoenying 62120501017",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Punthita Thasanthiah 62120501024",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Phet Muang-ek 62120501028",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Amornpan Lertbannapan 62120501038",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Chanitra Rungloetchaiyakun 62120501041",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Taewan Ekkamolkul 62120501075",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ])));
  }
}
