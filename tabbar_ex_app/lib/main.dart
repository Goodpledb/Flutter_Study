import 'package:flutter/material.dart';
import 'package:tabbar_ex_app/image01_app.dart';
import 'package:tabbar_ex_app/image01_ex_app.dart';

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

class _MyHomePageState extends State<MyHomePage> 
  with SingleTickerProviderStateMixin {

  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab Bar Test'),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          Image01_app(),
          Image01_ex_app(),
        ],
      ),
      bottomNavigationBar: Container(
        child: TabBar(
          controller: controller,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.lock_clock,
                color: Colors.blue,
              ),
              text: 'doremipa',
            ),
            Tab(
              icon: Icon(
                Icons.production_quantity_limits_rounded,
                color: Colors.red,
              ),
              text: 'aaaa',
            )
          ],
        ),
      ),
      
    );
  }
}