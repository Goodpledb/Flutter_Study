import 'dart:html';

import 'package:flutter/material.dart';

class Image01_ex_app extends StatefulWidget {
  const Image01_ex_app({ Key? key }) : super(key: key);

  @override
  State<Image01_ex_app> createState() => _Image01_ex_appState();
}

class _Image01_ex_appState extends State<Image01_ex_app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('images/pikachu-1.jpg'),
            Row(
              children: [
                Image.asset('images/pikachu-2.jpg'),
                Image.asset('images/pikcahu-3.jpg'),
              ],
            )
          ],
        ),
      ),
      
    );
  }
}