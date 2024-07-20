import 'package:flutter/material.dart';

//
class TodoTile extends StatelessWidget {
  //
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
//
  TodoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.yellow, //,
            borderRadius: BorderRadius.circular(12)),
        height: 60,
        child: Row(
          children: [
            //checkbox
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),
            //taaskanme
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                taskName,
                style: TextStyle(
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
