import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.purple,
        value: isChecked, onChanged: checkboxCallBack(),
        // onChanged: toggleCheckboxState(),
      ),
    );
  }
}

// (bool checkboxState) {
// setState(() {
// isChecked = checkboxState;
// });
// }
