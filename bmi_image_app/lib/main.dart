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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late TextEditingController heightController;
  late TextEditingController weightController;
  late String bmiImage;

  // 결과값 멘트용 변수
  String calcResult = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    heightController = TextEditingController();
    weightController = TextEditingController();

    bmiImage = 'images/bmi.png';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI 계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: heightController,
                decoration: const InputDecoration(labelText: '신장을 입력하세요(cm)',),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: weightController,
                decoration: const InputDecoration(labelText: '몸무게를 입력하세요(kg)',),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  // ----
                  calcFunction();
                }, 
                child: const Text('BMI 계산'),
              ),             
              const SizedBox(
                height: 50,
              ),
              Text(
                calcResult,
                style: TextStyle(
                  color: Colors.red,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                ),
              ), 
              const SizedBox(
                height: 20,
              ),
              Image.asset(bmiImage),          
            ],
          ),
        ),
      ),
    );
  }


// Function
  calcFunction() {
    if(heightController.text.trim().isEmpty || 
    weightController.text.trim().isEmpty) {
      errorSnackBar(context);
    } else {
      double doubleweight = double.parse(weightController.text);
      double doubleheight = double.parse(heightController.text) / 100 ;

      double bmi = double.parse((doubleweight / (doubleheight * doubleheight)).toStringAsFixed(1));

      setState(() {
        String resultStr;
        if(bmi <=18.4) {
            resultStr = '저체중';
            bmiImage = 'images/underweight.png';
          } else if(bmi >= 18.5 && bmi <= 22.9) {
            resultStr = '정상체중';
            bmiImage = 'images/normal.png';
          } else if(bmi >= 23 && bmi <= 24.9) {
            resultStr = '과체중';
            bmiImage = 'images/risk.png';
          } else if(bmi >= 25 && bmi <= 29.9) {
            resultStr = '비만';
            bmiImage = 'images/overweight.png';                    
          } else {
            resultStr = '고도비만';
            bmiImage = 'images/obese.png';
          }

          calcResult = '귀하의 bmi지수는 $bmi 이고 \n$resultStr 입니다.';
      });

    }
  }

  errorSnackBar(BuildContext context) {
    setState(() {
      calcResult = "";
    });
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