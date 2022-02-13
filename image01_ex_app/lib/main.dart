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
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('image01_ex_app'),
        backgroundColor: Colors.green,
        centerTitle: false,
      ),
      body: 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                    backgroundImage: AssetImage('images/pikachu-1.jpg'),
                    radius: 30.0,
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 3, 7, 5),   // left, top, right, bottom
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/pikachu-2.jpg'),
                      radius: 30.0,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(7, 3, 5, 5),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/pikachu-3.jpg'),
                      radius: 30.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      
    );
  }
}