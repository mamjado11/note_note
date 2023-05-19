// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import 'package:demo2/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {
      "note":
          "111111111111asd asd asd asd asd asd asd as d asd asd asd asd as das da sd asd ",
      "image": "mercedes.png"
    },
    {
      "note":
          "222222222222222222asd asd asd asd asd asd asd as d asd asd asd asd as das da sd asd ",
      "image": "mercedes.png"
    },
    {
      "note":
          "333333333333333333asd asd asd asd asd asd asd as d asd asd asd asd as das da sd asd ",
      "image": "mercedes.png"
    },
    {
      "note":
          "444444444444444444asd asd asd asd asd asd asd as d asd asd asd asd as das da sd asd ",
      "image": "mercedes.png"
    },
    {
      "note":
          "55555555555555555555asd asd asd asd asd asd asd as d asd asd asd asd as das da sd asd ",
      "image": "mercedes.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double mdw = MediaQuery.of(context).size.width;

    return
        // gnw - if we want to change direction of the page we put scaffold in directionality
        //Directionality(textDirection: TextDirection.rtl, child: Scaffold())
        Scaffold(
      appBar: AppBar(
        title: Text("homepage"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("addnote");
        },
        backgroundColor: Theme.of(context)
            .primaryColor, //gnw - to get the primary color of app
        child: Icon(Icons.add),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, i) {
            //gnw - use to delet elemnt by swap
            return Dismissible(
              key: Key("$i"),
              child: ListNote(
                notes: notes[i],
                mdw: mdw,
              ),
            );
          },
        ),
      ),
    );
  }
}

class ListNote extends StatelessWidget {
  final notes;
  final mdw;
  ListNote({this.notes, this.mdw});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            child: Image.asset("images/mercedes.png"),
            flex: 1,
          ),
          Expanded(
            flex: 4,
            child: ListTile(
              title: Text("title"),
              subtitle: Text("${notes['note']}"),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
