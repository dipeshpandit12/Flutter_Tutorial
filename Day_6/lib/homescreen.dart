import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  HomeScreen(this.username);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height:20.0),
          Center(child: Text("Welcome "+ username,style:TextStyle(fontSize: 24),)),
          SizedBox(height:250),
          Text("Dipesh Pandit")
        ],
      ),
    );
  }
}