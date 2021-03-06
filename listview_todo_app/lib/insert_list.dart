import 'package:flutter/material.dart';
import 'package:listview_todo_app/message.dart';

class InsertList extends StatefulWidget {
  const InsertList({ Key? key }) : super(key: key);

  @override
  State<InsertList> createState() => _InsertListState();
}

class _InsertListState extends State<InsertList> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController = TextEditingController();
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

} // End