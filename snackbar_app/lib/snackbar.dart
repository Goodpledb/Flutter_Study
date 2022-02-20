import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
                onPressed: () {
                  // -----
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('ElevatedButton is clicked'),
                      duration: Duration(seconds: 1),
                      backgroundColor: Colors.red,
                      ),
                  );
                },
                child: const Text('Snackbar Button'),
              ),
      );
  }
}