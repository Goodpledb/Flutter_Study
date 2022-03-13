import 'package:flutter/material.dart';
import 'package:listview_todo_ex_app/message.dart';

class InsertList extends StatefulWidget {
  const InsertList({ Key? key }) : super(key: key);

  @override
  State<InsertList> createState() => _InsertListState();
}

class _InsertListState extends State<InsertList> {
  late TextEditingController textEditingController;
  late bool switchValue1;
  late bool switchValue2;
  late bool switchValue3;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController = TextEditingController();

    switchValue1 = true;
    switchValue2 = false;
    switchValue3 = false;

    Message.imagePath = "images/cart.png";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add View'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  const Text('구매'),
                  Switch(
                    value: switchValue1, 
                    onChanged: (value) {
                      setState(() {
                        switchValue1 = value;
                        switchValue2 = false;
                        switchValue3 = false;
                        Message.imagePath = 'images/cart.png';
                      });
                      switchNoneCheck();
                    }
                  ),
                  Image.asset(
                    'images/cart.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  const Text('약속'),
                  Switch(
                    value: switchValue2, 
                    onChanged: (value) {
                      setState(() {
                        switchValue1 = false;
                        switchValue2 = value;
                        switchValue3 = false;
                        Message.imagePath = 'images/clock.png';
                      });
                      switchNoneCheck();
                    }
                  ),
                  Image.asset(
                    'images/clock.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  const Text('스터디'),
                  Switch(
                    value: switchValue3, 
                    onChanged: (value) {
                      setState(() {
                        switchValue1 = false;
                        switchValue2 = false;
                        switchValue3 = value;
                        Message.imagePath = 'images/pencil.png';
                      });
                      switchNoneCheck();
                    }
                  ),
                  Image.asset(
                    'images/pencil.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),                            
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  labelText: "목록을 입력하세요",
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  if(textEditingController.text.trim().isNotEmpty) {
                    addList();
                  }
                  Navigator.pop(context);
                }, 
                child: const Text('OK'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function
  addList() {
    Message.imagePath = "images/pencil.png";
    Message.workList = textEditingController.text;
  }

  switchNoneCheck() {
    if(switchValue1 == false &&
       switchValue2 == false &&
       switchValue3 == false 
    ) {
      setState(() {
        switchValue1 = true;
        Message.imagePath = "images/cart.png";
      });
    }
  }

} // End