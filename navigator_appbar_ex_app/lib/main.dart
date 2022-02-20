import 'package:flutter/material.dart';
import 'package:navigator_class_app/screen.dart';
import 'package:navigator_class_app/screen_1st.dart';
import 'package:navigator_class_app/screen_2nd.dart';

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
        '/' : ((context) => const Screen()),
        '/1st' : (context) {
          return const Screenfirst();
        },
        '/2nd' : (context) {
          return const Screensecond();
        }
      },
    );
  }
}

