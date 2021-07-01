import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main()=>runApp(MaterialApp(
  title: "contact",
  debugShowCheckedModeBanner: false,
  home: HomePage(),
  
));
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactlist=["Dipesh","Diwas","Deepika"];
  var phonenumber=["123","0132154","56451553"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Contact"),
        backgroundColor:Color(0xFFE21717), 
      ),
      body: ListView.builder(
        itemCount: contactlist.length,
        itemBuilder:(context,index){
          return ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title:Text(contactlist[index]),
            subtitle: Text(phonenumber[index]),
            trailing: IconButton(
              icon: Icon(Icons.call),
              onPressed:(){
                  launch("tel://${phonenumber[index]}");

              },
            ),
          );
 

        },

      ),
      
    );
  }
}