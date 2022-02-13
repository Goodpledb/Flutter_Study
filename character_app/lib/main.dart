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
      backgroundColor: Colors.amber[700],
      appBar: AppBar(
        title: const Text('영웅 Card'),
        backgroundColor: Colors.amber[900],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,20,20,0),   // left,top,right,bottom
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/Lee.jpg'),
                radius: 70.0,
              ),
            ),
            const Divider(
              height: 30,
              color: Colors.grey,
              thickness: 0.5,
            ),
            const Text('성웅', 
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const Text('이순신장군', 
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),    
            const Text('전적', 
              style: TextStyle(
                color: Colors.white,
              ),
            ),        
            const Text('62전 62승', 
              style: TextStyle(
                color: Colors.red,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: const [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0,),
                Text('삼천포해전',
                  style: TextStyle(
                            fontSize: 16
                  ),
                ),
              ],
            ),                  
            Row(
              children: const [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0,),
                Text('당포해전',
                  style: TextStyle(
                            fontSize: 16
                  ),
                ),
              ],
            ),          
            Row(
              children: const [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0,),
                Text('한산도대첩',
                  style: TextStyle(
                            fontSize: 16
                  ),
                ),
              ],
            ),           
            Row(
              children: const [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0,),
                Text('부산포해전',
                  style: TextStyle(
                            fontSize: 16
                  ),
                ),
              ],
            ),  
            Row(
              children: const [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0,),
                Text('명량해전',
                  style: TextStyle(
                            fontSize: 16
                  ),
                ),
              ],
            ),                 
            Row(
              children: const [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0,),
                Text('노량해전',
                  style: TextStyle(
                            fontSize: 16
                  ),
                ),
              ],
            ),            
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/turtle.gif'),
                radius: 50.0,
                backgroundColor: Colors.amber[700],
              ),
            ),                                
          ],
        ),
      ),
    );
  }
}