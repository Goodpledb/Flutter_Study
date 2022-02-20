import 'package:flutter/material.dart';
import 'snackbar.dart';

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //           onPressed: () {
      //             // -----
      //             ScaffoldMessenger.of(context).showSnackBar(
      //               const SnackBar(
      //                 content: Text('ElevatedButton is clicked'),
      //                 duration: Duration(seconds: 1),
      //                 backgroundColor: Colors.red,
      //                 ),
      //             );
      //           },
      //           child: const Text('Snackbar Button'),
      //         ),
      // ),

      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       // -----
      //       snackBarFunction(context);
      //     },
      //     child: const Text('Snackbak Buton'),
      //   ),
      // ),

      body: const MySnackBar(),
    );
  }
}


// ---------
// Function
// ---------
snackBarFunction(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('ElevatedButton is clicked'),
      duration: Duration(seconds: 1),
      backgroundColor: Colors.red,
      ),
  );
}

// End