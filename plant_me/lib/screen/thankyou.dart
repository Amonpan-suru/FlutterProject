import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/pages/home_page.dart';

class thankyouScreen extends StatelessWidget {
  const thankyouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightyellow,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: FractionallySizedBox(
            widthFactor: 1.0, // width w.r.t to parent
            heightFactor: 1.0, // height w.r.t to parent

            child: ElevatedButton.icon(
              icon: Image.asset("assets/img/thankyou_logo.png"),
              label: const Text("",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }));
              },
            ),
          ),
        ),
      ),
    );
  }
}
