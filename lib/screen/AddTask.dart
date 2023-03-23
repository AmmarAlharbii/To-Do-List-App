import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import '../model/TaskData.dart';
import '../model/task.dart';

class AddTask extends StatelessWidget {
  String? taskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      //buttom sheet
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'أضف مهمة',
            style: TextStyle(
                color: Colors.teal, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            textAlign: TextAlign.center,
            cursorColor: Colors.teal,
            autocorrect: true,
            maxLength: 20,
            toolbarOptions: ToolbarOptions(
                selectAll: true, copy: true, paste: true, cut: true),
            autofocus: true,
            onChanged: (value) {
              taskTitle = value;
            },
            decoration: InputDecoration(
              hintText: 'أضف المهمة',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(taskTitle!);
              Navigator.pop(context);
            },
            child: Text(
              'أضافه',
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 100),
              backgroundColor: Color.fromARGB(255, 12, 49, 80),
            ),
          )
        ],
      ),
    );
  }
}
