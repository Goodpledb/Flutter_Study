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
  late bool _lampSwitchStatus;   // 전구 On Off

  late bool _lampSizeStatus;    // 전구 확대 축소
  late bool _lampColor;       // 전구 색상 변경
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _lampImage = 'images/lamp_on.png';
    _lampWidth = 300;
    _lampHeight = 600;
    _lampSwitchStatus = true;
    _lampSizeStatus = true;
    _lampColor = false;
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
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // ----
                      _showDialogOn(context);                      
                  }, 
                  child: const Text('ON'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    // ----
                    setState(() {
                      _showDialogOff();                      
                    });

                  }, 
                  child: const Text('OFF'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Function
  _showDialogOn(BuildContext context) {

      if(_lampSwitchStatus == true) {
          showDialog(
          context: context, 
          builder: (BuildContext ctx) {
            // ignore: prefer_const_constructors
            return AlertDialog(
              title: const Text('경고'),
              content: const Text('현재 램프가 켜진 상태입니다'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                    // pop은 메모리에서 빼주는 역할
                  }, 
                  child: const Text(
                    '네 알겠습니다.',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                
              ],
            );
          },
        );
      } else {
        print('melong');
        setState(() {
          _lampImage = "images/lamp_on.png";
          _lampSwitchStatus = true;          
        });

      }
  }

    _showDialogOff() {

      if(_lampSwitchStatus == true) {
        showDialog(
          context: context, 
          builder: (BuildContext ctx) {
            // ignore: prefer_const_constructors
            return AlertDialog(
              title: const Text('램프 끄기'),
              content: const Text('램프를 끄시겠습니까?'),
              actions: [
                TextButton(
                  onPressed: () {
                    // ----
                    setState(() {
                      _lampSwitchStatus = false;
                      _lampImage = "images/lamp_off.png";
                      Navigator.of(ctx).pop();                      
                    });
                  }, 
                  child: const Text(
                    '예',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                    // pop은 메모리에서 빼주는 역할
                  }, 
                  child: const Text(
                    '아니요',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                
              ],
            );
          },
        );
      } else {
        showDialog(
          context: context, 
          builder: (BuildContext ctx) {
            // ignore: prefer_const_constructors
            return AlertDialog(
              title: const Text('경고'),
              content: const Text('현재 램프가 꺼진 상태 입니다.'),
              actions: [
                TextButton(
                  onPressed: () {
                    // ----
                      Navigator.of(ctx).pop();                      
                  }, 
                  child: const Text(
                    '예, 알겠습니다.',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),                
              ],
            );
          },
        );        
      }



      // _lampSwitchStatus = false;
      // _lampImage = "images/lamp_off.png";
    }


} // End
