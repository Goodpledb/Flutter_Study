import 'package:flutter/material.dart';

class SendMail extends StatelessWidget {
  const SendMail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Mail'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
        child: Column(
          children: [
            Text('유비에게 보낸 편지'),
            Text('관우에게 보낸 편지'),
            Text('장비에게 보낸 편지'),
          ]
        ),
      ),
      
    );
  }
}