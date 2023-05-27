import 'package:debug_console/debug_console.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/screen/login.dart';

import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

String _localhost() {
  if (Platform.isAndroid)
    return 'http://10.0.2.2:3000';
  else // for iOS simulator
    return 'http://localhost:3000';
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Future? serverResponse;

  void RegisterMysql() async {
    if (username.text == "" || email.text == "" || password.text == "") return;
    final respone = await http.post(
      Uri.parse(_localhost() + "/registerMySql"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username.text,
        'email': email.text,
        'password': password.text
      }),
    );
    checkRegister(respone.body);
    print(respone.body);
  }

  void checkRegister(String id) {
    switch (id) {
      case "0":
        {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              title: Text('Failed Register!'),
              content: Text('this Username is already taken'),
            ),
          );
        }
        break;
      case "1":
        {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              title: Text('Failed Register!'),
              content: Text('this Email is already taken'),
            ),
          );
        }
        break;
      case "2":
        {
          print("Register Complete");
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return const LoginScreen();
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
        //   title: const Text("Create New Profile"),
        // ),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: Form(
              child: Column(
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
                  child: Image.asset("assets/img/logo.png"),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: TextFormField(
                  controller: username,
                  style: TextStyle(
                      fontFamily: 'Sarabun',
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: const TextStyle(
                      color: lightergreen, fontSize: 16,
                      fontFamily: 'BebasNeue' //<-- SEE HERE
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
                  controller: email,
                  style: TextStyle(
                      fontFamily: 'Sarabun',
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: const TextStyle(
                      color: lightergreen, fontSize: 16, 
                      fontFamily: 'BebasNeue'//<-- SEE HERE
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
                  style: TextStyle(
                      fontFamily: 'Sarabun',
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(
                      color: lightergreen, fontSize: 16,
                      fontFamily: 'BebasNeue' //<-- SEE HERE
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: lightergreen), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        RegisterMysql();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))
                          // Background color
                          ),
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: green, fontSize: 12),
                        text: "Already have an Account? ",
                        children: [
                      TextSpan(
                        style: const TextStyle(
                          color: yellow,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                        ),
                        text: 'Login here',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) {
                              return const LoginScreen();
                            }));
                          },
                      )
                    ])),
              )
            ],
          )),
        ));
  }
}
