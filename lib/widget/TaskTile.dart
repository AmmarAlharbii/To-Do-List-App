import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../model/task.dart';

class TaskTile extends StatelessWidget {
  final String label;
  bool isChecked = false;
  final void Function() taskDelete;
  final void Function(bool?) checkState;
  TaskTile(
      {required this.label,
      required this.isChecked,
      required this.checkState,
      required this.taskDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
            decorationThickness: 3,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      leading: IconButton(
        iconSize: 20,
        icon: Icon(Icons.remove),
        onPressed: taskDelete,
        color: const Color.fromARGB(255, 12, 49, 80),
      ),
      trailing: Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.all(
            const Color.fromARGB(255, 12, 49, 80),
          ),
          value: isChecked,
          onChanged: checkState),
    );
  }
}
