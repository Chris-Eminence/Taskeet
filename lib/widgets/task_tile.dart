import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
     title: const Text('this is a Task'),
     trailing: TaskCheckBoxState(),
     
        );
  }
}

class TaskCheckBox extends StatefulWidget{
  @override
  _TaskCheckBoxState createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {

  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {

    return Checkbox(
      activeColor: Colors.purple,
      value: isChecked, 
      onChanged: (newValue) { 
      setState((){
          isChecked = newValue;

        });
       },);
  }
}
