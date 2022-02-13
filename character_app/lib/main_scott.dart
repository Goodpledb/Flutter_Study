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
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text('영웅 Card'),
        backgroundColor: Color.fromARGB(255, 189, 61, 2),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            children: [
               const CircleAvatar(
                  // ignore: prefer_const_constructors
                  backgroundImage: AssetImage('images/Lee.jpg'),
                  radius: 60.0,
               ),
              const SizedBox(height: 5,),
              const Divider(
                thickness: 2.0,
              ),
              const SizedBox(height: 5,),
              Row(
                  children: const [
                    Text(
                        '영웅', 
                        style: TextStyle(
                                fontSize: 13, 
                                color: Colors.white
                                ),
                          ),
                  ],
                ),
              const SizedBox(height: 5,),
              Row(
                children: const [
                  Text(
                      '이순신 장군', 
                      style: TextStyle(
                              fontSize: 25, 
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              ),
                        ),
                ],
              ),     
              const SizedBox(height: 12,),
              Row(
                children: const [
                  Text(
                      '연혁', 
                      style: TextStyle(
                              fontSize: 13, 
                              color: Colors.white
                              ),
                        ),
                ],
              ), 
              const SizedBox(height: 5,),              
              Row(
                children: const [
                  Text(
                      '62전 62승', 
                      style: TextStyle(
                              fontSize: 25, 
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              ),
                        ),
                ],
              ),
              const SizedBox(height: 12,),              
              Row(
                children: const [
                  Icon(Icons.check_circle_outline),  
                  SizedBox( width: 10,),                
                  Text(
                  '목포해전', 
                  style: TextStyle(
                          fontSize: 15, 
                          color: Colors.black,
                          ),
                    ),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.check_circle_outline),  
                  SizedBox( width: 10,),                
                  Text(
                  '사천포해전', 
                  style: TextStyle(
                          fontSize: 15, 
                          color: Colors.black
                          ),
                    ),  
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.check_circle_outline),  
                  SizedBox( width: 10,),                
                  Text(
                  '당포해전', 
                  style: TextStyle(
                          fontSize: 15, 
                          color: Colors.black
                          ),
                    ),  
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.check_circle_outline),  
                  SizedBox( width: 10,),                
                  Text(
                  '한산도대첩', 
                  style: TextStyle(
                          fontSize: 15, 
                          color: Colors.black
                          ),
                    ),  
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.check_circle_outline),  
                  SizedBox( width: 10,),                
                  Text(
                  '부산포해전', 
                  style: TextStyle(
                          fontSize: 15, 
                          color: Colors.black
                          ),
                    ),  
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.check_circle_outline),  
                  SizedBox( width: 10,),                
                  Text(
                  '명량해전', 
                  style: TextStyle(
                          fontSize: 15, 
                          color: Colors.black
                          ),
                    ),  
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.check_circle_outline),  
                  SizedBox( width: 10,),
                  Text(
                  '노량해전', 
                  style: TextStyle(
                          fontSize: 15, 
                          color: Colors.black
                          ),
                    ),  
                ],
              ),  
              Image.asset('images/turtle.gif', width: 100, height: 100),                                                                               
            ],
        ),
      ),
    );
  }
}