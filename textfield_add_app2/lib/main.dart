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
  // Property
  late TextEditingController num1Controller;
  late TextEditingController num2Controller;
  late String calcResult;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    num1Controller = TextEditingController();
    num2Controller = TextEditingController();
    calcResult = '';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("덧셈 구하기"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  controller: num1Controller,
                  decoration: const InputDecoration(labelText: '첫번째 숫자를 입력하세요'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: num2Controller,
                  decoration: const InputDecoration(labelText: '두번째 숫자를 입력하세요'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // ----
                    checkCalc();
                  },
                  child: const Text('덧셈 계산'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  calcResult,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  checkCalc() {
    if(num1Controller.text.trim().isEmpty || num2Controller.text.trim().isEmpty) {
      errorSnackBar(context);
    } else {
      int result =
          int.parse(num1Controller.text) + int.parse(num2Controller.text);

      setState(() {
        calcResult = "입력하신 숫자의 합은 $result 입니다.";
      });
    }
  }

  errorSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('숫자를 입력하시오'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }
}
