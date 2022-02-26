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
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // ---
              print("shopping cart is clicked");
            }, 
            icon: const Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {
              // ---
              print("search is clicked");
            }, 
            icon: const Icon(Icons.search),
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
                color: Colors.red[400],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  ),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: const Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: const Icon(
                Icons.add,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: const Text('설정'),
              onTap: () {
                print('Setting is clicked');
              },
              // trailing: const Icon(
              //   Icons.add,
              // ),
            ),    
            ListTile(
              leading: const Icon(
                Icons.question_answer,
                color: Colors.red,
              ),
              title: const Text('자주묻는 질문'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: const Icon(
                Icons.add,
              ),
            ),                    
          ],
        ),
      ),
    );
  }
}



