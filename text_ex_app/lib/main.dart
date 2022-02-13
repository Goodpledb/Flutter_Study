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
        primarySwatch: Colors.green,
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
        title: Text("Test Exercise 01"),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.black,
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          // 가운데 정렬하기
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Divider(
              height: 30,
              color: Colors.grey,
              thickness: 0.5,
            ),
            Text("유비"),
            Text("장비"),
            Text("관우"),
            Divider(
              height: 30,
              color: Colors.red,
              thickness: 0.5,
            ),
            // SizedBox(
            //   height: 20.0,
            // ),
            Text(
              '조조',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 28.0,
                letterSpacing: 5.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 30,
              color: Colors.grey,
              thickness: 0.5,
            ),
            Text("여포"),
            Text("동탁"),

          ],
          )
        ),
    );
  }
}