import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "todoApp",
      home: TODOAPP(),
      debugShowCheckedModeBanner: false,
    ));

class TODOAPP extends StatefulWidget {
  @override
  _TODOAPPState createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  
  late String value;


  var listTODO = [''];

  addTODO(String item) {
    setState(() {
      listTODO.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ToDo App"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed:(){
            addTODO(value);

          }
        ),
        body:ListView.builder(
          itemCount: listTODO.length,
          itemBuilder:(content, index){
          return index==0? Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Add item"
                 
              ),
              onChanged: (val){
                value = val;
                  
                
              },
            ),
          ): ListTile(
            leading:Icon(Icons.accessibility_rounded),
            title: Text('${listTODO[index]}'),
          );
        }) 
    );
  }
}