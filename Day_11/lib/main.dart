import"package:flutter/material.dart";

void main()=>runApp(MaterialApp(
  title: "Button Navigator",
  debugShowCheckedModeBanner: false,
  home: MainPage(),

));

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex=0;

  List<Widget> first_Widget = <Widget>[
    Container(
      child:Center(
        child:Text("Welcome to home page"),
      ),
    ),

    Container(
      child:Center(
        child:Text("Welcome to about page"),
      ),
    ),

    Container(
      child:Center(
        child:Text("Welcome to setting page"),
      ),
    ),
  ];

  _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF35BDD0),
        title: Text("Navigator App"),
        centerTitle: true,

      ),
      body: Center(
        child:first_Widget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "About",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
        ),
        ],

        currentIndex:_selectedIndex ,
        onTap: _onItemTap,

      ),
    );
  }
}