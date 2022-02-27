import 'package:flutter/material.dart';

class ReceivedMail extends StatelessWidget {
  const ReceivedMail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Received Mail'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
        child: Column(
          children: [
            Text('유비에게 온 편지'),
            Text('관우에게 온 편지'),
            Text('장비에게 온 편지'),
          ]
        ),
      ),
      
    );
  }
}