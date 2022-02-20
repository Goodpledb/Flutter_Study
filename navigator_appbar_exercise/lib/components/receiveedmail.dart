import 'package:flutter/material.dart';

class ReceivedMail extends StatelessWidget {
  const ReceivedMail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Received Mail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text('유비에게 보낸 메일'),
            Text('관우에게 보낸 메일'),
            Text('장비에게 보낸 메일'),            
          ],
        ),
      ),
      
    );
  }
}