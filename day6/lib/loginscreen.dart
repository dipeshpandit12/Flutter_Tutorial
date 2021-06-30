
import 'package:flutter/material.dart';

import 'homescreen.dart';
TextStyle mystyle=TextStyle(fontSize:25 );

class LoginScreen extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {

  late String username;
  late String password;

    
  @override
  Widget build(BuildContext context) {
      
      final usernameField=TextField(
        onChanged:(val){
          setState(() {
            username = val;

          });
        },
    style: mystyle,
    decoration: InputDecoration(
      contentPadding:EdgeInsets.all(10),
      hintText: "username",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0)

      )
    ),


  );


  final passwordField=TextField(
    onChanged:(val){
          setState(() {
            password= val;

          });
        },
    obscureText: true,
    style: mystyle,
    decoration: InputDecoration(
      contentPadding:EdgeInsets.all(10),
      hintText: "password",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0)

      )
    ),
  );



  final myLoginButton=Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color:Colors.blue,
      child: MaterialButton(
        minWidth:MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        onPressed: (){
        if(username =="brp" && password=="pass123")
          Navigator.push(context,MaterialPageRoute(builder: (context)=> HomeScreen (username)));


        else
          print("Login Failed");

        },
        child:Text("Login",style:TextStyle(color:Colors.white,fontSize: 25)),
      )
    );
    return Scaffold(
      body: Center(
        child: Container(
          color:Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center ,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height:10 ),
                Icon(Icons.supervised_user_circle,size:100),
                SizedBox(height:100),
                usernameField,
                  SizedBox(height:10),
                  passwordField,
                  SizedBox(height:20),
                  myLoginButton
              ],),
          ),
        )
      ),
    );
  }
}