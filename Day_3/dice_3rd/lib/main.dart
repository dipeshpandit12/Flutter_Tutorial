import 'package:flutter/material.dart';
import 'dart:math';
void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner : false,
  title: "Dice App",
  home:HomePage(),

));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dicenumber=1;

  ChangeDice(){
    setState(() {
      dicenumber= Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Dice roller"),
        centerTitle:true,
        
      ),
      body: Column(children: [
        SizedBox(height:20),
        Image.asset("assets/$dicenumber.png",height:250,width:600),
        MaterialButton(
          onPressed:ChangeDice,
          color: Colors.blue,
          child:(Text("Roll",style:TextStyle(fontSize: 24,color: Colors.white),))
          ),
          SizedBox(height:70),
          Text("#Dipesh",style:TextStyle(fontWeight: FontWeight.bold ))
      ],),
    );
  }
}