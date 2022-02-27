import 'package:drawer_ex_app/mail.dart';
import 'package:drawer_ex_app/receivedmail.dart';
import 'package:drawer_ex_app/sendmail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) {
          return const Mail();
        },
        '/send' : (context) {
          return const SendMail();
        },
        '/received' : ((context) => const ReceivedMail()),
      },
    );
  }
}