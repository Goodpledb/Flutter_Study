import 'package:flutter/material.dart';

class Mail extends StatelessWidget {
  const Mail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Mail'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/send');
            }, 
            icon: const Icon(Icons.email),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/received');
            }, 
            icon: const Icon(Icons.email_outlined),
          ),          

        ], 
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('images/pikachu-1.jpg'),
              ),
              otherAccountsPictures: [
                const CircleAvatar(
                  backgroundImage: AssetImage('images/pikachu-2.jpg'),
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('images/pikachu-3.jpg'),
                ),
              ],
              accountName: const Text("pikachu"), 
              accountEmail: const Text('pikachu@naver.com'),
              onDetailsPressed: (){
                print('mail address is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  ),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              leading: const Icon(
                Icons.mail,
                color: Colors.blue,
              ),
              title: const Text('보낸 편지함'),
              onTap: () {
                // print('Home is clicked');
                Navigator.pushNamed(context, '/send');
              },
              // trailing: const Icon(
              //   Icons.add,
              // ),
            ),
            ListTile(
              leading: const Icon(
                Icons.mail_outline,
                color: Colors.red,
              ),
              title: const Text('받은 편지함'),
              onTap: () {
                // print('Setting is clicked');
                Navigator.pushNamed(context, '/received');
              },
              // trailing: const Icon(
              //   Icons.add,
              // ),
            ),                    
          ],
        ),
      ),      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/send');                
              }, 
              child: const Text('보낸 편지함'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/received');
              }, 
              child: const Text('받은 편지함'),
            ),
        ]),
      ),
    );
  }
}