import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

///

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //getuserinput
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a task"),
            ),

            //buttons->save+cancel

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //savebutton
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(width: 8),
                //cancel button
                MyButton(text: "Cancel", onPressed: onCancel)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
