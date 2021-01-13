import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(this.taskName, this.isChecked, this.callBack);

  final String taskName;
  final bool isChecked;
  final Function callBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: callBack,
      ),
    );
  }
}
