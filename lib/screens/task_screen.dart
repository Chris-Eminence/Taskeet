import 'package:flutter/material.dart';

class TaskScreens extends StatelessWidget {
  const TaskScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
        child: Column(
          children: [
            CircleAvatar(child: Icon(Icons.list)),
            Text('Taskeet'),
            
          ],
        ),
      ),
    );
  }
}
