import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyapp/models/task_data.dart';
import 'package:todoeyapp/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
