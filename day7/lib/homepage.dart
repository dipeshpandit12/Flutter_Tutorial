import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"), 
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Dipesh"),
                accountEmail: Text("www.pandit1234567890@gmail.com")),
                ListTile(
                  title:Text("Purchase"),
                  subtitle:Text("Purchase item",style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline4,
    fontSize: 48,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
                  ),),
                  leading:Icon(Icons.shop),
                  onTap:(){
                    print("Purchased pressed");

                  },
                ),
                ListTile(
                  title:Text("Sales"),
                  subtitle:Text("Sales item"),
                  leading:Icon(Icons.shop),
                  onTap:(){
                    print("Sales pressed");

                  },
                

                ),
          ],
        ),
      ),
    );
  }
}
