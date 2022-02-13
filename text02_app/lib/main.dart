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
          title: Text('Test with Column and Row')
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                    const [
                    Icon(Icons.speed_sharp),
                    SizedBox(
                      width: 5,
                    ),
                    Text('James'),
                  ]),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                    const [
                    Icon(Icons.sports_kabaddi_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Titan'),
                  ]),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                    const [
                    Icon(Icons.sports_esports),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Rome'),
                  ]),
            ),                        
          ],
        )
    );
  }
}