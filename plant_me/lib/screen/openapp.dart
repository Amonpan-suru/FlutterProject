import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/screen/login.dart';

class OpenappScreen extends StatelessWidget {
  const OpenappScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightyellow,
      // appBar: AppBar(
      //   title: const Text("Register/Login"),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: FractionallySizedBox(
            widthFactor: 1.0, // width w.r.t to parent
            heightFactor: 1.0, // height w.r.t to parent

            child: ElevatedButton.icon(
              icon: Image.asset("assets/img/logo.png"),
              label: const Text("", style: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }));
              },
            ),
          ),
        ),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         // Image.asset("assets/img/plantme_logo.png"),
      //         Padding(
      //           padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
      //           child: SizedBox(
      //             width: double.infinity,

      //             child: ElevatedButton.icon(
      //               icon: Image.asset("assets/img/plantme_logo.png"),
      //               label: const Text("", style: TextStyle(fontSize: 20)),
      //               onPressed: () {},
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
