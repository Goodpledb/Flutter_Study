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
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 53, 53, 53),
      appBar: AppBar(
        title: const Text('image Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/siba.png',
              width: 200,
              height: 200,
            ),
            Image.asset(
              'images/siba_2.png',
              width: 200,
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: const Text(
                            '왜 줄이 나오냐',
                            style: TextStyle(
                                  color: Colors.white,
                              ),
                            ),
            ),
          ],
        ),
      ),
    );
  }
}
