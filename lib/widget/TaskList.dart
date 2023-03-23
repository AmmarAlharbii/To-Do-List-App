import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/TaskData.dart';
import '../model/task.dart';
import 'TaskTile.dart';

class TaskList extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context).task.length,
      itemBuilder: (context, Index) {
        return TaskTile(
          label: Provider.of<TaskData>(context).task[Index].name, //title
          isChecked: Provider.of<TaskData>(context).task[Index].check,
          checkState: (value) {
            //check box
            Provider.of<TaskData>(context, listen: false).updateTask(
                Provider.of<TaskData>(context, listen: false).task[Index]);
          },
          taskDelete: () {
            //to delete task
            Provider.of<TaskData>(context, listen: false).deleteTask(
                Provider.of<TaskData>(context, listen: false).task[Index]);
          },
        );
      },
    );
  }
}
