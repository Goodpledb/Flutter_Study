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
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late TextEditingController value1;
  late TextEditingController value2;
  late int sum;
  late Color resultcolor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    value1 = TextEditingController();
    value2 = TextEditingController();
    sum = 0;
    resultcolor = Colors.white;
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('덧셈 구하기'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: value1,
                decoration: const InputDecoration(labelText: '첫번째 숫자를 입력하세요.'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: value2,
                decoration: const InputDecoration(labelText: '두번째 숫자를 입력하세요.'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  // ----
                  setState(() {
                      if(value1.text == '' || 
                      value1.text.trim().isEmpty || 
                      value2.text == '' ||
                      value2.text.trim().isEmpty) {
                        errorSnackBar(context);
                      }
                      else {
                        sum = int.parse(value1.text) + int.parse(value2.text);
                        resultcolor = Colors.red;
                      }  
                  });
                }, 
                child: const Text('덧셈 계산'),
              ),
              const SizedBox(height: 30,),
              Text(
                "입력하신 숫자의 합은 $sum 입니다.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: resultcolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// Function
  errorSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("숫자를 입력하세요"),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.red,
        ),
    );
  }


// End  
}
