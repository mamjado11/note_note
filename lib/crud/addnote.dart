// ignore_for_file: prefer_const_constructors, sort_child_properties_last, deprecated_member_use, duplicate_ignore, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("add note "),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Form(
                child: Column(
              children: [
                TextFormField(
                  maxLines: 1,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "title",
                      labelText: "add note "),
                ),
                TextFormField(
                  minLines: 1,
                  maxLines: 4,
                  maxLength: 300,
                  decoration: InputDecoration(
                      hintText: "description",
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "write note "),
                ),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          padding: EdgeInsets.all(20),
                          height: 170,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Please Choose Imagesss ",
                                style: TextStyle(fontSize: 25),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.image_outlined,
                                        size: 30,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "from gallery ",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.camera,
                                        size: 30,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        child: Text(
                                          "from camera ",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text("add image"),
                ),
                // ignore: deprecated_member_use
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "add note",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
