import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({ Key? key }) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: const Text('First Page'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('첫번째 페이지'),
          ],
        ),
      ),
      
    );
  }
}