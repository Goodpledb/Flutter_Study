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
  // Property
  late TextEditingController value1;
  late TextEditingController value2;
  late int sum;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    value1 = TextEditingController();
    value2 = TextEditingController();
    sum = 0;
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('간단한 버튼 계산기'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '덧셈 결과 : $sum',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    controller: value1,
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    controller: value2,
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // -----
                      setState(() {
                        sum = int.parse(value1.text) + int.parse(value2.text);
                      });
                    }, 
                    child: SizedBox(
                      width: 220,
                      child: Row(
                        children: const [
                          Icon(Icons.add),
                          SizedBox(width: 20),
                          Text('덧셈'),
                        ],
                      ),
                    ),
                  ),
                ),
    
              ],
            ),
          ),
        ),
      ),
    );
  }
}
