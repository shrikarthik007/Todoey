import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy books'),
    Task(name: 'Buy pen'),
    Task(name: 'Buy Bag'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TasksTile(),
        TasksTile(),
      ],
    );
  }
}
