import 'package:flutter/material.dart';

class Image01_app extends StatefulWidget {
  const Image01_app({ Key? key }) : super(key: key);

  @override
  State<Image01_app> createState() => _Image01_appState();
}

class _Image01_appState extends State<Image01_app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('images/pikachu-1.jpg'),
            Image.asset('images/pikachu-2.jpg'),
            Image.asset('images/pikachu-3.jpg'),
          ],
        ),
      ),
      
    );
  }
}