import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/pages/home_page.dart';
import 'package:plant_me/screen/register.dart';

import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

String _localhost() {
  if (Platform.isAndroid)
    return 'http://10.0.2.2:3000';
  else // for iOS simulator
    return 'http://localhost:3000';
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  Future? serverResponse;

  void LoginMysql() async {
    if (username.text == "" && password.text == "") {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const HomePage();
      }));
      return;
    }
    final respone = await http.post(
      Uri.parse(_localhost() + "/loginMySql"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username.text,
        'password': password.text
      }),
    );
    checkLoginMysql(respone.body);
  }

  void checkLoginMysql(String id) {
    switch (id) {
      case "0":
        {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              title: Text('Failed Login!'),
              content: Text('Username is wong'),
            ),
          );
        }
        break;
      case "1":
        {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              title: Text('Failed Login!'),
              content: Text('Password is wong'),
            ),
          );
        }
        break;
      case "2":
        {
          print("Login Complete");
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return const HomePage();
          }));
        }
        break;
    }
  }

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
                    controller: username,
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
                    controller: password,
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
                            LoginMysql();
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const HomePage()));
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
