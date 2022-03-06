import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
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

  late List<String> characterText;
  late int currentNum;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    characterText = [
      '대',
      '대한',
      '대한민',
      '대한민국'
    ];

    currentNum = 0;

    Timer.periodic(const Duration(seconds: 1), (Timer timer) { 
      changeTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LED 광고'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              characterText[currentNum],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
              ),
            )
          ],
        ),
      ),
      
    );
  }


// Function
  changeTimer() {
    setState(() {
      currentNum++;

      if(currentNum >= characterText.length) {
        currentNum = 0;
      }
    });
  }

} // End