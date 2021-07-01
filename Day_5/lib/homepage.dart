import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  var cross =Icon(Icons.cancel);
  var circle=Icon(Icons.circle);
  var edit=Icon(Icons.edit);
  
  // Initilize Box Image
  
  bool isCross=true;
  late String message;
  late List<String> gameState;

  @override
  void initState() {
    gameState=List.filled(9,"empty");
    this.message="";
  
    super.initState();
  }
  // to play game

playgame(int index){
  if(this.gameState[index]=='empty'){
    setState(() {
      if(this.isCross){
        this.gameState[index]="cross";
      }
      else{
        this.gameState[index]="circle";
      }
    });
  }
}
  //Reset Game
resetGame(){
  setState(() {
    this.message="";
  
  });
}

/// to get icon image

Icon getImage(String title){
  switch(title){
    case('empty'):
    return edit;
    break;
    
    case('cross'):
    return cross;
    break;


    case('circle'):
    return circle;
    break;
  }
}
// to check for winning
checkWin(){


}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic For Toe"),
        centerTitle: true,
      ),
      body:Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment:CrossAxisAlignment.center,

      children: [
        Expanded(
          child:GridView.builder(
            gridDelegate: null,
            itemBuilder:null),
        )
      ],)
    );
  }
}