import 'package:flutter/material.dart';
import 'package:navigator_app_exercise/components/mail.dart';
import 'package:navigator_app_exercise/components/receiveedmail.dart';
import 'package:navigator_app_exercise/components/sendmail.dart';

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
        '/received' : (context) {
          return const ReceivedMail();
        },
      },
    );
  }
}
