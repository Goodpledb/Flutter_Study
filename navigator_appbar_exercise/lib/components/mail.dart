import 'package:flutter/material.dart';



class Mail extends StatelessWidget {
  const Mail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator_AppBar'),
        actions: [
           IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/send');
          }, 
          icon: const Icon(Icons.mail)
          ),
           IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/received');
          }, 
          icon: const Icon(Icons.mail_outline)
          ),          
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/send');
              }, 
              child: const Text('보낸편지함'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/received');
              }, 
              child: const Text('받은편지함'),
            ),            

        ]),
      ),
    );
  }
}