import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plant_me/color.dart';
import 'package:plant_me/screen/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                    labelText: "E-mail",
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
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
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
