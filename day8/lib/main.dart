import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "simple interest calculator",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  String p='';
  String r='';
  String t='';
  //String result= "" ;
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        centerTitle: true,
        backgroundColor: myColor,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            SizedBox(height: 25),
            TextField(
              onChanged:(val){
              p =val;
              } ,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Principal",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
            ),
            SizedBox(height:15),
            TextField(
              onChanged: (val){
                t=val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter time",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
            ),
            SizedBox(height:15),
            TextField(
              onChanged: (val){
                r=val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Rate",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
            ),
              SizedBox(height:40),

              // for button
              MaterialButton(
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color:Colors.red),

                ),
                height: 50,
                color: myColor,
                child: Text("Calculate",style: TextStyle(color: Colors.white,fontSize: 22),),
                onPressed:(){
                  setState(() {
                    result= (double.parse( p) * double.parse(t) * double.parse(r)/100).toString();
                   
                  });
                  
                },
              ),
              SizedBox(height:15),
              Center(
                child:Text(
                  "The result is $result",
                  style: TextStyle(fontSize: 22)
                ),
              ),
          ],
        ),
      ),
    );
  }
}

const myColor = Color(0xFFE21717);
