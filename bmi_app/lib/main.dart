import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  late TextEditingController a1;
  late TextEditingController b1;
  
  late String result2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    a1 = TextEditingController();
    b1 = TextEditingController();


    result2 = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI 계산기'),
      ),
      body: Column(
        children: [
          TextField(
            controller: a1,
            decoration: const InputDecoration(labelText: '신장을 입력하세요 (단위:cm)'),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: b1,
            decoration: const InputDecoration(labelText: '몸무게를 입력하세요 (단위:kg)'),
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(
            onPressed: () {
              // ---
              setState(() {
               // calc_result();
                double result1 = int.parse(b1.text) / ((int.parse(a1.text)/100)*(int.parse(a1.text)/100));

                if(result1 >= 0 && result1 <= 18.4) {
                  result2 = "귀하의 BMI 지수는 $result1이고 저체중 입니다.";  
                } else if (result1 >= 18.5 && result1 <= 22.9){
                 result2 = "귀하의 BMI 지수는 $result1이고 정상체중 입니다.";
                } else if (result1 >= 23.0 && result1 <= 24.9){
                 result2 = "귀하의 BMI 지수는 $result1이고 과체중 입니다.";
                } else if (result1 >= 25.0 && result1 <= 29.9){
                 result2 = "귀하의 BMI 지수는 $result1이고 비만 입니다.";
                } else if (result1 >= 30){
                 result2 = "귀하의 BMI 지수는 $result1이고 고도비만 입니다.";
                }
              });
            }, 
            child: const Text('BMI 계산'),
          ),
          Text('$result2'),
        ],
      )
      
    );
  }



}