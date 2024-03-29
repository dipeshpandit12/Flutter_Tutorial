import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score Changer",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Score App"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.restore_outlined),
          onPressed: resetNumber,
        ),
        body: Column(
          children: [
            SizedBox(height: 25),
            Center(
              child: Text("Score is ",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            Center(
              child: Text(number.toString(),
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 80,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  color: Colors.blue,
                  child: Text('Increase'),
                  onPressed:increaseNumber,
                  textColor: Colors.white,
                ),
                SizedBox(width: 50),
                RaisedButton(
                  color: Colors.red,
                  child: Text("Decrease"),
                  onPressed: decreaseNumber,
                  textColor: Colors.white,
                ),
              ],
            )
          ],
        ));
  }
}
