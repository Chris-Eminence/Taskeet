import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('this is a Task',
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: TaskCheckBox(
          checkBoxState: isChecked,
          toggleCheckboxState: ),
    );
  }
}
//
// (bool checkboxState) {
// setState(() {
// isChecked = checkboxState;
// });
// }

class TaskCheckBox extends StatelessWidget {
  final Function toggleCheckboxState;
  final bool checkBoxState;
  TaskCheckBox(
      {required this.checkBoxState, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Checkbox(
        activeColor: Colors.purple,
        value: checkBoxState,
        onChanged: toggleCheckboxState(),
      ),
    );
  }
}
