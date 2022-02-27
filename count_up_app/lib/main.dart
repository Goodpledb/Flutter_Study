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
  late int count;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Up'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("현재 클릭수는 $count 입니다."),
            const SizedBox(height: 50,),
            // FloatingActionButton(
            //   onPressed: () {
            //     // ----
            //     setState(() {
            //        count++;
            //     });
            //   },
            //   child: const Icon(Icons.add),
            //   backgroundColor: Colors.red,
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
              setState(() {
                count++;
              });
            },
          child: const Icon(Icons.add),
        ),
    );
  }
}