import 'package:flutter/material.dart';
import 'package:todoeyapp/models/task.dart';
import 'package:todoeyapp/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  // List<Task> tasks = [
  //   Task(name: 'Buy a milk'),
  //   Task(name: 'Buy eggs'),
  //   Task(name: 'Buy bread'),
  //   Task(name: 'Buy fruits'),
  // ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (bool checkBoxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            },
          );
        });
  }
}
