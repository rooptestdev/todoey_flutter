import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];
}
