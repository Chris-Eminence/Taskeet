import 'package:flutter/material.dart';
import 'package:taskeet/widgets/task_tile.dart';
import 'package:taskeet/model/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> task;
  TasksList({required this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: widget.task[index].isDone,
            taskTitle: widget.task[index].name,
            checkboxCallBack: (bool checkboxState) {
              setState(() {
                widget.task[index].toggleDone();
              });
            });
      },
      itemCount: widget.task.length,
    );
  }
}
