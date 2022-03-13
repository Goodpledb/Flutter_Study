import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
   State<MyHomePage> createState() => _MyHomePageState();
 }
 
 class _MyHomePageState extends State<MyHomePage> {
   late List data;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = [];
    getJSONData();
  }


   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text('JSON Test'),
       ),
       body: Center(
         child: data.isEmpty
         ? const CircularProgressIndicator()
        //  const Text(
        //    '데이터가 없습니다.',
        //    style: TextStyle(fontSize: 20,),
        //    textAlign: TextAlign.center,
        //  )
         : ListView.builder(
           itemCount: data.length, 
           itemBuilder: (context, index) {
             return Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Code :',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                          Text(
                            data[index]['code'].toString(),
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Name :',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                          Text(
                            data[index]['name'].toString(),
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Dept :',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                          Text(
                            data[index]['dept'].toString(),
                          ),
                      ],
                    ),
                  ),   
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Phone :',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                          Text(
                            data[index]['phone'].toString(),
                          ),
                      ],
                    ),
                  ),                                                    
                ],
              ),
             );
           }
          ),
       ),
     );
   }

   // Functions
   Future<bool> getJSONData() async {
     var url = Uri.parse('https://zeushahn.github.io/Test/student2.json');
     var response = await http.get(url);
     print(response.body);

      setState(() {
        var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
        List result = dataConvertedJSON['results'];
        data.addAll(result);
      });

     return true;
   }


 } // End