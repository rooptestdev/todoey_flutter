import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  const TaskCheckbox({Key? key, required this.checkboxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (newValue) {
        // setState(() {
        //   isChecked = newValue;
        // });
      },
    );
  }
}
