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

  late TextEditingController num1Controller;
  late TextEditingController num2Controller;

  late TextEditingController addController;
  late TextEditingController subController;
  late TextEditingController mulController;
  late TextEditingController divController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    num1Controller = TextEditingController();
    num2Controller = TextEditingController();

    addController = TextEditingController();
    subController = TextEditingController();
    mulController = TextEditingController();
    divController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('간단한 계산기'),
      ),
      body: SingleChildScrollView(
        
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  controller: num1Controller,
                  decoration: const InputDecoration(labelText: '첫번째 숫자를 입력하세요'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: num2Controller,
                  decoration: const InputDecoration(labelText: '두번째 숫자를 입력하세요'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // ------
                        if (num1Controller.text.trim().isEmpty ||
                        num2Controller.text.trim().isEmpty) {
                          errorSnackBar(context);
                        }
                        else {
                          calcResult();
                        }
      
                      }, 
                      child: const Text('계산하기'),
                    ),
                    const SizedBox(width: 30,),
                    ElevatedButton(
                      onPressed: () {
                        // ------
                        removeResult();
                      }, 
                      child: const Text('초기화'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40,),
                TextField(
                  controller: addController,
                  decoration: const InputDecoration(labelText: '덧셈 결과'),
                  readOnly: true,
                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: subController,
                  decoration: const InputDecoration(labelText: '뺄셈 결과'),
                  readOnly: true,
                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: mulController,
                  decoration: const InputDecoration(labelText: '곱셈 결과'),
                  readOnly: true,
                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: divController,
                  decoration: const InputDecoration(labelText: '나눗셈 결과'),
                  readOnly: true,
                ),
                const SizedBox(height: 10,),
      
              ],
            ),
          ),
        ),
      ),
    );
  }

  errorSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("숫자를 입력하세요"),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.red,
        ),
    );
  }

  calcResult() {
    int addResult = int.parse(num1Controller.text) + int.parse(num2Controller.text) ;
    int subResult = int.parse(num1Controller.text) - int.parse(num2Controller.text) ;
    int mulResult = int.parse(num1Controller.text) * int.parse(num2Controller.text) ;
    double divResult = int.parse(num1Controller.text) / int.parse(num2Controller.text) ;

    setState(() {
      addController.text = addResult.toString();
      subController.text = subResult.toString();
      mulController.text = mulResult.toString();
      divController.text = divResult.toString();
    });
  } 

  removeResult() {
    setState(() {
      num1Controller.text = '';
      num2Controller.text = '';
      addController.text = '';
      subController.text = '';
      mulController.text = '';
      divController.text = '';
    });
  }

// End 
}
