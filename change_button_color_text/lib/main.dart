import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String buttonText;
  late Color buttoncolor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buttonText = 'Hello';
    buttoncolor = Colors.blue;
    print('initstate');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change button color & text'),
      ),
      body: Center(
        child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          //   primary: buttoncolor,
          // ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttoncolor),
          ),
          onPressed: () {
            // -----
            _changeColorText();
          },
          child: Text(buttonText),
        ),
      ),
    );
  }

  // Function
  _changeColorText() {
    setState(() 
    {
      if (buttonText == 'Flutter') {
        buttonText = 'Hello';
        buttoncolor = Colors.blue;
      } else {
        buttonText = 'Flutter';
        buttoncolor = Colors.red;
      }
      print('setState');
    }
    );
  }

  // End
}
