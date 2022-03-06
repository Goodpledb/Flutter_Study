import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

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

  
  late int currentpage;
  late List imageName;
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imageName = [
      'flower_01.png',
      'flower_02.png',
      'flower_03.png',
      'flower_04.png',
      'flower_05.png',
      'flower_06.png',
    ];

    currentpage = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('무한 이미지 반복'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  // imageName[currentImage],
                  imageName[currentpage],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'images/${imageName[currentpage]}',
                  width: 400,
                  height: 500,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // ---
                        setState(() {
                          prevButton();
                        });
                      }, 
                      child: Text('<< 이전'),
                      ),
                    const SizedBox(
                        width: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // ---
                        setState(() {
                           nextButton();                          
                        });

                      },
                      child: Text('다음 >>'),
                    ),
                  ],
                ),
              ]),
          ),
        ),
    );
  }

  nextButton() {
    currentpage++;

    if(currentpage >= imageName.length) {
      // currentpage = 0;
      currentpage--;
    }
  }

  prevButton() {
    currentpage--;

    if(currentpage <0) {
      // currentpage = imageName.length - 1;
      currentpage++;
    }
  }

}
