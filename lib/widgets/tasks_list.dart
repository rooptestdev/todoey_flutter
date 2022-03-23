import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_provider.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //List<Task> tasks = Provider.of<TaskProvider>(context).tasks;
    return Consumer<TaskProvider>(
      builder: (context, taskData, chile) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (bool? checkboxState) {
                taskData.updateTask(taskData.tasks[index]);
              },
              longPressCallback: () {
                taskData.removeTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
