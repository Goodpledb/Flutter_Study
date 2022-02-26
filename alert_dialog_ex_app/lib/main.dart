import 'dart:io';
import 'package:alert_dialog_ex_app/second_page.dart';
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
        title: const Text("Alert and push"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _showDialog(context);
          },
          child: const Text('Move the 2nd page'),
        ),
      ),
    );
  }
}

_showDialog(BuildContext context) {
  showDialog(
    context: context, 
    builder: (BuildContext ctx) {
      // ignore: prefer_const_constructors
      return AlertDialog(
        title: const Text('Page 이동'),
        content: const Text('아래의 버튼을 누르면 페이지 이동을 합니다.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context1) {
                  return const SecondPage();
                 } )
              );
            },
           child: const Text ('Page 이동')
          ),
          // ElevatedButton(
          //    style: ButtonStyle(
          //      backgroundColor: MaterialStateProperty.all(Colors.blue),
          //    ) ,
          //    onPressed: () {
          //     Navigator.push(
          //       context, 
          //       MaterialPageRoute(builder: (context) {
          //         return const SecondPage();
          //        } )
          //     );
          //    },
          //    child: const Text ('Page 이동'),
          // ),
        ],
        );
    },   
      
  );
}