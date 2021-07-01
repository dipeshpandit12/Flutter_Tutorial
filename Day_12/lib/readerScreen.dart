import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReaderScreen extends StatefulWidget {
  
  final int chapterID;
  ReaderScreen(this.chapterID);

  @override
  _ReaderScreenState createState() => _ReaderScreenState();
}
  late WebViewController _controller;
class _ReaderScreenState extends State<ReaderScreen> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chapter"+ widget.chapterID.toString() ),
      ),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webviewcontroller){
           _controller=webviewcontroller;
           if(widget.chapterID==1)
           _loadHtmlCh1();
           else
           _loadHtmlCh2();
        },
      ),
    );
  }
}
_loadHtmlCh1() async{
  String fileText =await rootBundle.loadString("essets/ch1.html");
  _controller.loadUrl(Uri.dataFromString(
    fileText, mimeType:"text/html",
  encoding:Encoding.getByName("utf-8")
  
  ).toString()); 
}

_loadHtmlCh2() async{
  String fileText =await rootBundle.loadString("essets/ch1.html");
  _controller.loadUrl(Uri.dataFromString(
    fileText, mimeType:"text/html",
  encoding:Encoding.getByName("utf-8")
  
  ).toString()); 
}