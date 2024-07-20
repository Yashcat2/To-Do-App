import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TextEditingController myController = TextEditingController();

//greeting message
  String greetingMessage = "";
//greetUser
  void greetUser() {
    setState(() {
      String userName = myController.text;
      greetingMessage = "Hello," + userName;
    });
  }

//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type Your Name",
                ),
              ),
              ElevatedButton(onPressed: greetUser, child: Text("Tap!"))
              //button
            ],
          ),
        ),
      ),
    );
  }
}
