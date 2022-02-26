import 'package:alert_dialog_ex_app/main.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: const Text('2번째 페이지 입니다.'),
        ),
    );
  }
}