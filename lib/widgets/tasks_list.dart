import 'package:flutter/material.dart';
import 'package:taskeet/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          TaskTile(),
          TaskTile(),
          TaskTile(),
        ]);
  }
}
