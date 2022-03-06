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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late String _lampImage;
  late double _lampWidth;
  late double _lampHeight;
  late bool _switchSize;
  late bool _switchLamp;
  late String _lampSizeStatus;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _lampImage = 'images/lamp_on.png';
    _lampWidth = 150;
    _lampHeight = 300;
    _switchSize = false;
    _switchLamp = true;
    _lampSizeStatus = 'small';

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image 확대 및 축소'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              height: 650,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _lampImage,
                    width: _lampWidth,
                    height: _lampHeight,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text('전구확대'),
                    Switch(
                      value: _switchSize, 
                      onChanged: (value) {
                        // ---
                        setState(() {
                          _switchSize = value;
                          decisionLampSize();
                        });
                      }
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('전구 스위치'),
                    Switch(
                      value: _switchLamp, 
                      onChanged: (value) {
                        // ---
                        setState(() {
                          _switchLamp = value;
                          decisionOnOff();
                        });
                      }
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      
    );
  }


// Function
  decisionLampSize() {
    
    if(_lampSizeStatus == 'small') {
      _lampWidth = 300;
      _lampHeight = 600;
      _lampSizeStatus = 'large';
    } else {
      _lampWidth = 150;
      _lampHeight = 300;
      _lampSizeStatus = 'small';
    }

  }

  decisionOnOff() {
    if(_switchLamp) {
      _lampImage = "images/lamp_on.png";
    } else {
      _lampImage = "images/lamp_off.png";
    }
  }

} // End
