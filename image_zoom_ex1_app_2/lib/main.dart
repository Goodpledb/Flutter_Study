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
        primarySwatch: Colors.red,
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

  // 이미지 확대 축소 변수
  // 이미지 파일 변수
  // 스위치 bool 변수
  // 이미지 width 변수
  // 이미지 height 변수

  late String _lampImage;     // Image Name
  late double _lampWidth;     // Image Width
  late double _lampHeight;    // Image Height
  late bool _switch;          // 전구 On Off
  late bool _lampSizeStatus;    // 전구 확대 축소
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _lampImage = 'images/lamp_on.png';
    _lampWidth = 150;
    _lampHeight = 300;
    _switch = true;
    _lampSizeStatus = false;
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
              width: 350,
              height: 650,
              //color: Colors.amber,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      '전구 확대',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Switch(
                      value: _lampSizeStatus, 
                      onChanged: (value) {
                        // -----
                        setState(() {
                          _lampSizeStatus = value;
                          decisionLampSize();
                        });
                      }
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    const Text(
                      '전구 스위치',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Switch(
                      value: _switch, 
                      onChanged: (value) {
                        // -----
                        setState(() {
                          _switch = value;
                          decisionOnOff();
                        });
                      }
                    ),
                  ],
                ),

              ],
            )

          ],
        ),
      ),
    );
  }

  // Function
  decisionLampSize() {
    
    if(_lampSizeStatus) {
      _lampWidth = 300;
      _lampHeight = 600;
    } else {
      _lampWidth = 150;
      _lampHeight = 300;
    }

  }

  decisionOnOff() {
    if(_switch) {
      _lampImage = "images/lamp_on.png";
    } else {
      _lampImage = "images/lamp_off.png";
    }
  }


} // End
