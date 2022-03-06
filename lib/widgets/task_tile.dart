import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  const TaskTile({
    Key? key,
    required this.isChecked,
    required this.taskTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: null //toggleCheckboxState,
          ),
    );
  }
}

// (bool? checkboxState) {
// setState(() {
// isChecked = checkboxState!;
// });
// },
