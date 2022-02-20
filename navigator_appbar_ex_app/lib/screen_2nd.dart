import 'package:flutter/material.dart';

class Screensecond extends StatelessWidget {
  const Screensecond({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2nd'),
        backgroundColor: Colors.red,
      ),
      body: const Center(
        child: Text(
          'Screen 2nd',
          style: TextStyle(
            fontSize: 20.0,
            ),
          )
        ),
    );
  }
}