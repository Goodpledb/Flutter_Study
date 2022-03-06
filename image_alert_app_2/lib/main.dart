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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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


  late String _imageName;
  late bool _isLampOn;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _imageName = 'images/lamp_on.png';
    _isLampOn = true;

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert를 이용한 메세지 출력'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              _imageName,
              width: 250,
              height: 500,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //---
                    setState(() {
                      if(_isLampOn) {
                          _showLampOnAlert(context);
                      } else {
                        _imageName = 'images/lamp_on.png';
                        _isLampOn = true;
                      }
                    });
                    
                  }, 
                  child: const Text('켜기'),
                ),
                const SizedBox(
                   width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // ---
                    setState(() {
                      if(_isLampOn) {
                        _showLampOffChangeAlert(context);
                      } else {
                        _showLampOffAlert(context);
                      }
                    });
                  }, 
                  child: const Text('끄기'),
                ),                
              ],
            ),

          ]
        ),
      ),
      
    );
  }

  // -------------
  // Function
  // 램프가 켜진 상테에서 켜기를 한 경우
  _showLampOnAlert(BuildContext context) {
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('경고'),
          content: const Text('현재 램프가 켜진 상태입니다'),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  }, 
                  child: const Text(
                      '네 알겠습니다.',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
            ],)
          ],
        );
      }
    );
  }

  // 램프가 켜진 상태에서 램프 끄기
  _showLampOffChangeAlert(context) {
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('램프끄기'),
          content: const Text('램프를 끄시겠습니까?'),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _imageName = "images/lamp_off.png";
                      _isLampOn = false;
                    });
                    Navigator.of(context).pop();
                  }, 
                  child: const Text(
                      '네',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  }, 
                  child: const Text(
                      '아니요',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ),                
            ],)
          ],
        );
      }
    );
  }

  // 램프가 꺼진 상태에서 끄기를 한 경우
  _showLampOffAlert(BuildContext context) {
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('경고'),
          content: const Text('현재 램프가 꺼진 상태입니다'),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  }, 
                  child: const Text(
                      '네 알겠습니다.',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
            ],)
          ],
        );
      }
    );
  }  


} // End