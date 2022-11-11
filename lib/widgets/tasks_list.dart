import 'package:flutter/material.dart';
import 'package:taskeet/widgets/task_tile.dart';
import 'package:taskeet/model/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> task = [
    Task(name: 'Buy Shoes for DevFest'),
    Task(name: 'Buy Polo for DevFest'),
    Task(name: 'Buy Glasses for DevFest')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
