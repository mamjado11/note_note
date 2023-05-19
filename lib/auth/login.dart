// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "images/mercedes.png",
              height: 50,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "username ",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 3),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "password ",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 3),
                      )),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("if you do not have account  "),
                      InkWell(
                        child: Text(
                          "click here ",
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed("signup");
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("homepage");
                    },
                    child: Text(
                      "sign in ",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
