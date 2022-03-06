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
  late String _buttonName;    // Button Name  
  late bool _switch;          // Lamp Switch
  late String _lampSizeStatus;    // 현재 화면의 lamp 크기 상태
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _lampImage = 'images/lamp_on.png';
    _lampWidth = 150;
    _lampHeight = 300;
    _buttonName = 'Image 확대';
    _switch = true;
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
                TextButton(
                  onPressed: () {
                    // ---
                    setState(() {
                      decisionLampSize();
                    });
                  }, 
                  child: Text(
                    _buttonName,
                  )
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    const Text(
                      '전구 스위치',
                      style: const TextStyle(
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
      _buttonName = "Image 축소";
      _lampSizeStatus = 'large';
    } else {
      _lampWidth = 150;
      _lampHeight = 300;
      _buttonName = "Image 확대";
      _lampSizeStatus = 'small';
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
