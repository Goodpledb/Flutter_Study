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

  late String _buttonState;  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState : 기본 값을 설정 합니다."); 

    _buttonState = 'OFF';
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print("deactivate 가 호출됨");
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("dispose 가 호출됨");
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    print("build() 호출됨");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Life Cycle'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // ----
              _onClick();
            },
            child: const Text('버튼을 누르세요'),
            style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
          ),
          const SizedBox(
            height: 50,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('버튼 상태 :'),
              const SizedBox(width: 10.0,),
              Text(_buttonState),
            ],
          )

        ],
      )),
    );
  }

// ------ Function ------
  _onClick() {
    print('onClick()이 호출됨');
    
    
    // if (_buttonState == "ON") {
    //   setState(() {
    //     _buttonState = "OFF";     
    //   });
    // } else {
    //   setState(() {
    //     _buttonState = "ON";     
    //   });
    // }

    // if (_buttonState == "OFF") {
    //   setState(() {
    //     _buttonState = "ON";
    //   });
    // }
    // else {
    //   setState(() {
    //     _buttonState = "OFF";
    //   });
    // }

    setState(() {
      if(_buttonState == "OFF") {
        _buttonState = "ON";
      }
      else {
        _buttonState = "OFF";
      }
    });


 
    print(_buttonState);
  }
// End  
}


