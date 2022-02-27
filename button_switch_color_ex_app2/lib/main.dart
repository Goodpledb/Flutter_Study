import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // Property
  late bool switchValue;
  late Color buttonColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    switchValue = false;
    buttonColor = Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Changed Button color on Switch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // -----
              }, 
              child: const Text("Flutter"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttonColor),
              ),
            ),
            Switch(
              value: switchValue, 
              onChanged: (value) {
                changeButtonColor(value);
              },
            ),
          ],
        ),
      ),
    );
  }

// Function
  changeButtonColor(bool value) {
    setState(() {

      switchValue = value;
      if (value == true) {
        buttonColor = Colors.red;
      }
      else {
        buttonColor = Colors.blue;
      }
    });
  }


// End  
}