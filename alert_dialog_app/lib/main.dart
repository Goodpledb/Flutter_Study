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

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog with Gesture'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _showDialog(context);
          },
          child: Text('Hello World'),
          ),
      ),
    );
  }
}

// -- Function --
_showDialog(BuildContext context) {
  showDialog(
    context: context, 
    builder: (BuildContext ctx) {
      // ignore: prefer_const_constructors
      return AlertDialog(
        title: const Text('Alert Title'),
        content: const Text('Hello world를 touch했습니다.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              // pop은 메모리에서 빼주는 역할
            }, 
            child: const Text('종료'),
          ),
          
        ],
      );
    },
  );
}



// End