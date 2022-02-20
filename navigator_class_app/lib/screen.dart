import 'package:flutter/material.dart';
import 'package:navigator_class_app/screen_1st.dart';
import 'package:navigator_class_app/screen_2nd.dart';


class Screen extends StatelessWidget {
  const Screen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //   primary: Colors.green,
              // ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                // ----
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return const Screenfirst();
                //     }
                //   )
                // );
                Navigator.pushNamed(context, '/1st');
              }, 
              child: const Text(
                  'Go to the Screen No.1',
                )
            ),
            ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //   primary: Colors.red,
              // ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                // ----
                // Navigator.push(
                //   context, 
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return const Screensecond();
                //     }
                //   )
                // );
                Navigator.pushNamed(context, '/2nd');
              }, 
              child: const Text(
                  'Go to the Screen No.2',
                )
            ),
          ],
        ),
        ),
      
    );
  }
}