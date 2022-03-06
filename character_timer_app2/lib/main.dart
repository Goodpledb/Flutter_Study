import 'dart:async';

import 'package:flutter/material.dart';

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

  late List str;
  late int currentCharacter;
  late String character;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    str = ['대', '한', '민', '국'];
    currentCharacter = 0;
    //character = str[currentCharacter];
    // character = str[0] + str[1];
    character = str[currentCharacter];

    Timer.periodic(const Duration(seconds: 1), (Timer timer) { 
      // --
      changeCharacter();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LED 광고'),
      ),
      body: Center(
        child: 
          Text(
            character,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
            ),
          ),
      ),
    );
  }

// Function
  changeCharacter() {
    setState(() {
      currentCharacter++;

      if(currentCharacter >= str.length) {
        currentCharacter = 0;
        character = str[currentCharacter];
      } else {
        character += str[currentCharacter];
        // character = character + str[0];
        // character = character + str[1];
        // character = character + str[2];
        // character = character + str[3];
      }
    });  
  }

} // End