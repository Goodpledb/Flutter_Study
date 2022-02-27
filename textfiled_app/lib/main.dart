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

  // TextEditingController textEditingController = TextEditingController();

  late TextEditingController textEditingController;
  late String inputValue;   // 사용자의 입력 내용

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  
  }



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 키보드 없애기
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Single TextField"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(labelText: '글자를 입력하세요'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    //----
                    if(textEditingController.text == '' || 
                    textEditingController.text.trim().isEmpty) 
                    {
                      errorSnackBar(context);
                    } else {
                      inputValue = textEditingController.text;
                      showSnackBar(context, inputValue);
                    }
    
                  }, 
                  child: const Text('출력'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

// Function
  // 정상적으로 입력한 결과 보여주기
  showSnackBar(BuildContext context, String inputValue) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("입력한 글자는 $inputValue 입니다"),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.blue,
      ),
    );
  }

  // 텍스트필드에 입력을 안하고 버튼을 눌렀을 경우
  errorSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("글자를 입력하세요."),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }

// End  
}