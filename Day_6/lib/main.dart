import 'package:flutter/material.dart';

import 'loginscreen.dart';

void main()=> runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login App",
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
} 