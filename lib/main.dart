// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ninja_id(),
  ));
}

class ninja_id extends StatefulWidget {
  const ninja_id({Key? key}) : super(key: key);

  @override
  State<ninja_id> createState() => _ninja_idState();
}

class _ninja_idState extends State<ninja_id> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ninja ID Card",
        ),
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/chunli.png'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "NAME",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Chun-Li",
                style: TextStyle(
                    color: Colors.amber[200],
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(color: Colors.grey),
            ),
            Text("$ninjaLevel",
                style: TextStyle(
                    color: Colors.amber[200],
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.email, color: Colors.grey[400]),
                SizedBox(
                  width: 10.0,
                ),
                Text("chun.li@ninja.com.uk",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
