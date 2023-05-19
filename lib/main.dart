// ignore_for_file: prefer_const_constructors, avoid_print, deprecated_member_use, sort_child_properties_last, camel_case_types, unnecessary_import, use_key_in_widget_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:demo2/auth/login.dart';
import 'package:demo2/auth/signup.dart';
import 'package:demo2/crud/addnote.dart';
import 'package:demo2/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        buttonColor: Colors.blue,
        textTheme: TextTheme(
          headline5: TextStyle(color: Colors.white),
        ),
      ),
      routes: {
        "test": (context) => test(),
        "login": (context) => Login(),
        "signup": (context) => Signup(),
        "homepage": (context) => HomePage(),
        "addnote": (context) => AddNote(),
      },
    );
  }
}

class test extends StatefulWidget {
  const test({super.key});
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home page"),
        centerTitle: true,
      ),
      body: Center(),
    );
  }
}
