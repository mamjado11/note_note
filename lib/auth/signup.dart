// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "email ",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 3),
                      )),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("if you have account  "),
                      InkWell(
                        child: Text(
                          "click here ",
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed("login");
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "create account ",
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
