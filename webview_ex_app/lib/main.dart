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
  late String siteName; // Site 주소

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Completer<WebViewController>();
    isloading = true;
    siteName = "www.google.com";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.amber,
        title: Center(
          child: Column(
            children: [
              const Text('Web View'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        siteName = 'www.google.com';
                      });
                      reloadSite();
                    }, 
                    child: const Text ('Google'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                  ),    
                  const SizedBox(width: 15,),              
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        siteName = 'www.naver.com';
                      });
                      reloadSite();
                    }, 
                    child: const Text ('Naver'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 15,),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        siteName = 'www.daum.net';
                      });
                      reloadSite();
                    }, 
                    child: const Text ('Daum'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                  ),                  
                ],
              )
            ],
          ),
        )
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: 'https://$siteName',
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

  // Function
  reloadSite() {
    // controller.future.then((value) => value.loadUrl('https://$siteName'));
    controller.future.then((value) {
      value.loadUrl('https://$siteName');
    });
  }

} // End
