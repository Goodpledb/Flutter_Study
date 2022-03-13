import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late Completer<WebViewController> controller;
  late bool isloading;  // for CircularIndicator

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Completer<WebViewController>();
    isloading = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView'),
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: 'https://www.daum.net',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController){
              controller.complete(webViewController);
            },
            onPageFinished: (finish){
              setState(() {
                isloading = false;
              });
            },
            onPageStarted: (start){
              setState(() {
                isloading = true;
              });
            },
          ),
          isloading
          ? const Center(
            child: CircularProgressIndicator(),
          )
          : Stack()
        ],
      ),
      floatingActionButton: FutureBuilder<WebViewController>(
        future: controller.future,
        builder: (BuildContext context, AsyncSnapshot<WebViewController> controller) {
          if(controller.hasData) {
            return FloatingActionButton(
              child: const Icon(Icons.arrow_back),
              backgroundColor: Colors.redAccent,
              onPressed: () {
                controller.data!.goBack();       
              }
              );
          }
          return Stack();
        }
      ),
    );
  }
}
