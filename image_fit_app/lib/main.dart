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
        title: const Text('Image fitting'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,// 방향을 알려줘야 한다.
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                    'images/turtle.gif',
                    width: 50,
                    height: 100,
              ),
              Image.asset(
                    'images/turtle.gif',
                    width: 50,
                    height: 100,
                    fit: BoxFit.fill,     // width와 height를 가득 채워서 그린다.
              ),
              Image.asset(
                    'images/turtle.gif',
                    width: 50,
                    height: 100,
                    fit: BoxFit.contain,  // 기본값 : 이미지가 짤리지 않고 비율이 변하지 않는 범위에서 가능한 한 크게 그린다.
              ),   
              Image.asset(
                    'images/turtle.gif',
                    width: 50,
                    height: 100,
                    fit: BoxFit.cover,    // 비율을 유지한채 지정한 범위를 모두 덮도록 그린다.
              ),     
              Image.asset(
                    'images/turtle.gif',
                    width: 50,
                    height: 100,
                    fit: BoxFit.fitWidth, // width를 꽉채워 그린다. 이미지가 잘릴 수 있다.
              ),    
              Image.asset(
                    'images/turtle.gif',
                    width: 200,
                    height: 400,
                    fit: BoxFit.scaleDown,  // 전체 이미지가 나올 수 있도록 크기를 조절해서 그린다.
              ),     
            ],
          ),
        ),
      ),
    );
  }
}