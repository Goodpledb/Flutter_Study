import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("buttons"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              print('text buttons');
            },
            onLongPress: () {
              print('Long Pressed text button');
            },
            child: const Text(
              'Text Button',
              style: TextStyle(
                fontSize: 20.0,
                //fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            style: TextButton.styleFrom(
              primary: Colors.red,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('Elevated Buttons');
            },
            onLongPress: () {
              print('Elevated Long Pressed Buttons');
            },
            child: const Text(
              'Elevated Button',
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text(
              'OutLined Button',
            ),
            style: OutlinedButton.styleFrom(
              primary: Colors.green,
              side: const BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              size: 30,
            ),
            label: const Text(
              'Go to Home',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            style: TextButton.styleFrom(
              primary: Colors.purple,
            ),
          ),
          ElevatedButton.icon(
              onPressed: () {

              },
              icon: const Icon(
                Icons.home,
                size: 20.0,
              ),
              label: const Text(
                'Go to home',
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: const Size(200, 50),
              ),
          ),
          OutlinedButton.icon(
            onPressed: () {
              
            }, 
            icon: const Icon(
              Icons.home,
              size: 20,
              color: Colors.black,
            ), 
            label: const Text(
                      'Go to Home',
                      ),
            style: OutlinedButton.styleFrom(
              primary: Colors.black,
              side: const BorderSide(
                color: Color.fromARGB(255, 185, 185, 185),
                width: 1.0,
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            children: [
                     TextButton(
                        onPressed: () {

                      }, 
                        child: const Text(
                              'TextButton',
                              style: TextStyle(
                              fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                    ElevatedButton(
                      onPressed: () {

                      }, 
                      child: const Text(
                            'ElevatedButton',
                          ),
                    ),
                ],
            ),
        ],
      ),
    ),
    );
  }
}
