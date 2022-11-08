import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

    bool? isChecked = false;
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
     title: const Text('this is a Task', style: TextStyle(decoration: TextDecoration.lineThrough)),
     trailing: TaskCheckBox(isChecked!),
     
        );
  }
}

class TaskCheckBox extends StatelessWidget{

final bool checkBoxState;
TaskCheckBox(this.checkBoxState);

@override
  Widget build(BuildContext context) {

    return Checkbox(
      activeColor: Colors.purple,
      value: checkBoxState, 
      onChanged: (newValue) { 
      // setState((){
      //     checkBoxState = newValue;

      //   });
       },);
  }
}
