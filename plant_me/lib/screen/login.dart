import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/pages/home_page.dart';
import 'package:plant_me/screen/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightyellow,
      // appBar: AppBar(
      //   title: const Text("เข้าสู่ระบบ"),
      // ),
      body: Column(children: [
        SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 150, 10, 0),
                    child: Image.asset("assets/img/logo.png"),
                  ),
                ),
                const SizedBox(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 300, 0),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: brown),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: const TextStyle(
                        color: lightergreen, fontSize: 16, //<-- SEE HERE
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 3, color: lightergreen), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 2, 30, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: const TextStyle(
                        color: lightergreen, fontSize: 16, //<-- SEE HERE
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 3, color: lightergreen), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                    child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10)) // Background color
                              ),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: green, fontSize: 12),
                          text: "Don't have an Account? ",
                          children: [
                        TextSpan(
                          style: const TextStyle(
                            color: yellow,
                            fontSize: 12,
                          ),
                          text: 'Create Your Account',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (context) {
                                return const RegisterScreen();
                              }));
                            },
                        )
                      ])),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
