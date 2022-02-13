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
        primarySwatch: Colors.blue,
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
      appBar: AppBar(
        title: const Text('Text Row'),
        centerTitle: false,
        backgroundColor: Colors.green,
        foregroundColor: Colors.pink,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'James',
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 20,
                fontWeight: FontWeight.w200,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Cathy'),
            SizedBox(
              width: 10,
            ),
            Text('Kenny'),
            SizedBox(
              width: 10,
            ),
            Text('Scott'),
            SizedBox(
              width: 10,
            ),
            Text('Nike'),
          ],
        ),
      ),
    );
  }
}
