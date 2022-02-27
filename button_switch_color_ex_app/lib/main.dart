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

        primarySwatch: Colors.blue,
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

  late bool switchValue;
  late Color buttonColor;
  late String buttonText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    switchValue = false;
    buttonColor = Colors.blue;
    buttonText = 'Flutter';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Changed Button color on Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // ----
              }, 
              child: Text(buttonText),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttonColor),
              ),
            ),
            const SizedBox(height: 30,),
            Switch(
              value: switchValue, 
              onChanged: (value) {
                  // ---
                  _changeSwitchButtonColor();
              },
            ),
          ],
        ),
      ),
    );
  }


// Function
_changeSwitchButtonColor() {
    setState(() {
      if (switchValue == false) {
        switchValue = true;
        buttonColor = Colors.red;
        buttonText = 'Flutter';
      } else {
        switchValue = false;
        buttonColor = Colors.blue;
        buttonText = 'FLUTTER';
      }
    });
}

// End  
}


