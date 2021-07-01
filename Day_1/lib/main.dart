import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile APP",
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Tech DD Twins")),
        body: Column(
          children: [
            SizedBox(height: 50),
            Center(
                child: Image.network(
                    "https://1.bp.blogspot.com/-6odC-On_4LU/Xv9YAckfHRI/AAAAAAAAABk/XKmsJkUmnNQuKBo09nKJjpNVdCn-36djQCK4BGAsYHg/s320/1590388347257.png",
                    height: 250,
                    width: 250)),
            // SizedBox(height:100),
            Text('Name : Dipesh Pandit ',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.green,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text('Address: Simara Bara Nepal',
                style: TextStyle(fontSize: 14, color: Colors.blue)),
            SizedBox(height: 5),
            Text('Emai: www.pandit1234567890@gmail.com',
                style: TextStyle(fontSize: 14, color: Colors.black)),
            SizedBox(height: 50),
            Text(
              "Created by Dipesh Pandit",
              style: TextStyle(fontSize: 14, color: Colors.red),
            )
          ],
        ),
      )));
}
