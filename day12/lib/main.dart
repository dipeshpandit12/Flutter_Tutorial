import 'package:day12/readerScreen.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  title:"Chapter Reader App",
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));

var chapterLists =[
  'chapter 1',
  'chapter 2',
  'chapter 3',
  'chapter 4',
  'chapter 5',
  'chapter 6',
  'chapter 7',
  'chapter 8',
  'chapter 9',

];

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chapter Reader App"),
        backgroundColor: Color(0xFFB4161B),
      ),
      body: Container(
        padding:EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: chapterLists.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing:2.0,
            mainAxisSpacing: 2.0
          ), 
          itemBuilder:(BuildContext context,int index ){
            return GestureDetector(
              onTap: (){
                if(chapterLists[index]=='chapter 1'){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=> ReaderScreen(1))
                );
                }else if(chapterLists[index]=='chapter 2'){  
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=> ReaderScreen(2))
                );

                }

              },
                          child: Card(
                child:Column(
                  children: [
                    SizedBox(height:20),
                    Icon(Icons.book,size: 40,),
                    Text(chapterLists[index],style:TextStyle(fontSize: 24)),
                  ],
                ) ,

              ),
            );

          }),
      
      ),
    );
  }
}