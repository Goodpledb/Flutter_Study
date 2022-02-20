import 'package:flutter/material.dart';

class Screenfirst extends StatelessWidget {
  const Screenfirst({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1st'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          'Screen 1st',
          style: TextStyle(
            fontSize: 20.0,
            ),
          )
        ),
    );
  }
}